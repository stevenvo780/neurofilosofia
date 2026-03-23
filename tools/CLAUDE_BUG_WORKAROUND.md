# Claude Code Crash Workaround

Problema observado el 2026-03-23:

- `Claude Code 2.1.81`
- `Bun v1.3.11`
- caídas con `Segmentation fault` / `Illegal instruction`
- patrón reproducible en sesiones largas o al reabrir transcripciones grandes

Síntomas locales confirmados:

- `--resume` se vuelve inestable cuando hay transcripts grandes en `~/.claude/projects/`
- una sesión activa también puede morir después de bastante tiempo aunque no uses `--resume`
- el problema parece estar en la TUI/runtime, no en el repo de la presentación

## Mitigación práctica

Usa el wrapper [`claude-safe.sh`](/workspace/tools/claude-safe.sh):

```bash
/workspace/tools/claude-safe.sh status
/workspace/tools/claude-safe.sh archive-oversized
/workspace/tools/claude-safe.sh run --dangerously-skip-permissions
```

Qué hace:

- lista transcripts guardados por tamaño
- mueve fuera del índice de Claude los `.jsonl` grandes
- conserva un backup en `~/.claude/bugfix-backup-<timestamp>/`

## Recomendación operativa

- evita sesiones muy largas
- cuando una sesión crezca demasiado, archívala y abre una nueva
- si necesitas retomar trabajo, usa el estado real del repo (`git status`, archivos cambiados) como fuente de verdad, no solo `resume`
- si Claude vuelve a caer, el código ya escrito suele quedar persistido en el repo y en `~/.claude/file-history/`
