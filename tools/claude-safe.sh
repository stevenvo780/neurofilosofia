#!/usr/bin/env bash

set -euo pipefail

CLAUDE_HOME="${HOME}/.claude"
PROJECTS_DIR="${CLAUDE_HOME}/projects"
TIMESTAMP="$(date -u +%Y%m%dT%H%M%SZ)"
BACKUP_DIR="${CLAUDE_HOME}/bugfix-backup-${TIMESTAMP}"
DEFAULT_THRESHOLD_KB=400

usage() {
  cat <<'EOF'
Usage:
  claude-safe.sh status
  claude-safe.sh archive <session-id>
  claude-safe.sh archive-oversized [threshold-kb]
  claude-safe.sh run [claude args...]

Commands:
  status
    Lists stored Claude project transcripts sorted by size.

  archive <session-id>
    Moves one session transcript out of Claude's active index and stores a backup.

  archive-oversized [threshold-kb]
    Archives every transcript larger than threshold-kb. Default: 400 KB.

  run [claude args...]
    Archives oversized transcripts first, then launches Claude with the given args.

Notes:
  - Archived files are moved away from ~/.claude/projects, so they stop appearing in
    the resume picker.
  - Backups are kept under ~/.claude/bugfix-backup-<timestamp>/.
EOF
}

ensure_dirs() {
  mkdir -p "${BACKUP_DIR}"
}

find_session_file() {
  local session_id="$1"
  find "${PROJECTS_DIR}" -type f -name "*${session_id}*.jsonl" | head -n 1
}

archive_file() {
  local file="$1"
  local base
  base="$(basename "${file}")"

  ensure_dirs
  cp "${file}" "${BACKUP_DIR}/${base}.bak"
  mv "${file}" "${file}.archived-${TIMESTAMP}"

  printf 'archived: %s\nbackup:   %s\n' "${file}" "${BACKUP_DIR}/${base}.bak"
}

status_cmd() {
  if [[ ! -d "${PROJECTS_DIR}" ]]; then
    echo "No ~/.claude/projects directory found."
    return 0
  fi

  find "${PROJECTS_DIR}" -type f -name '*.jsonl' -printf '%s %p\n' \
    | sort -nr \
    | awk '
      {
        size_kb = $1 / 1024;
        $1 = "";
        sub(/^ /, "", $0);
        printf "%9.1f KB  %s\n", size_kb, $0;
      }
    '
}

archive_one_cmd() {
  local session_id="${1:-}"
  local file

  if [[ -z "${session_id}" ]]; then
    echo "Missing session id."
    usage
    exit 1
  fi

  file="$(find_session_file "${session_id}")"
  if [[ -z "${file}" ]]; then
    echo "Session not found: ${session_id}"
    exit 1
  fi

  archive_file "${file}"
}

archive_oversized_cmd() {
  local threshold_kb="${1:-${DEFAULT_THRESHOLD_KB}}"
  local found=0

  if [[ ! "${threshold_kb}" =~ ^[0-9]+$ ]]; then
    echo "Threshold must be an integer number of KB."
    exit 1
  fi

  if [[ ! -d "${PROJECTS_DIR}" ]]; then
    echo "No ~/.claude/projects directory found."
    return 0
  fi

  while IFS= read -r -d '' file; do
    found=1
    archive_file "${file}"
  done < <(find "${PROJECTS_DIR}" -type f -name '*.jsonl' -size +"${threshold_kb}"k -print0)

  if [[ "${found}" -eq 0 ]]; then
    echo "No transcripts above ${threshold_kb} KB."
  fi
}

run_cmd() {
  archive_oversized_cmd "${DEFAULT_THRESHOLD_KB}"
  exec claude "$@"
}

main() {
  local cmd="${1:-}"
  shift || true

  case "${cmd}" in
    status)
      status_cmd "$@"
      ;;
    archive)
      archive_one_cmd "$@"
      ;;
    archive-oversized)
      archive_oversized_cmd "$@"
      ;;
    run)
      run_cmd "$@"
      ;;
    ""|-h|--help|help)
      usage
      ;;
    *)
      echo "Unknown command: ${cmd}"
      usage
      exit 1
      ;;
  esac
}

main "$@"
