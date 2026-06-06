# 10_LogicaFormal — Indice de seccion

Formalizacion en lenguaje ST y material de presentacion del texto de Hinton (1992).

## guia_st.md

Guia de referencia del lenguaje ST: sintaxis, tipos de enunciados, operadores y ejemplos basicos.
Fuente: `.st-guide.md` del workspace.

## hinton/

Formalizacion ST completa del texto *2b - Hinton - Redes Neuronales que Aprenden de la Experiencia* y
material de presentacion oral del mismo.

### Archivos .st (logica formal)

| Archivo | Contenido |
|---|---|
| `00_Hinton_Total.st` | Archivo maestro: ontologia + argumento + Text Layer reunidos |
| `01_Hinton_Ontologia_Base.st` | Ontologia minima en logica de primer orden |
| `02_Hinton_Argumento_Global.st` | Columna vertebral del argumento (logica proposicional) |
| `03_Hinton_Text_Layer.st` | Vinculo de cada claim con pasajes textuales concretos |
| `04_Hinton_Diccionario.st` | Glosario conceptual formalizado (representacion, modelo, etc.) |
| `05_Hinton_Presupuestos_Expandidos.st` | Presupuestos implicitos explicitados |
| `06_Hinton_Critica_Ontologica.st` | Objeciones formalizadas a la lectura fuerte |

Todos los `.st` fueron validados con el ejecutable `st` en esta maquina.
Fuente canonica: REPO `Curso/Presenacion/ST_Hinton_Ontologia/`
(version sin ruido de prueba; identica en contenido al workspace excepto en `00_Hinton_Total.st`
donde el workspace tenia lineas de test `// test perf 12345` y `// nota nueva ST X1` eliminadas).

### Archivos .md (presentacion)

| Archivo | Contenido |
|---|---|
| `AsesorRapidoHinton.md` | Guia rapida de consulta para usar durante la presentacion |
| `GuionCompletoPresentacionHinton.md` | Guion slide a slide (S00-S13, ~25.5 min) con especificaciones de animacion |
| `PlanPresentacion.md` | Plan estructural de la presentacion |
| `NotasDelTexto.md` | Notas de lectura y anotaciones del texto de Hinton |
| `ExplicacionesExtra_ConexionNeuronalYSinapsis.md` | Explicaciones adicionales sobre conexion neuronal y sinapsis |

Fuente: REPO `Curso/Presenacion/` (Markdown estandar con `-` bullets y `---` separadores).

### imagenes_pdf/

14 imagenes PNG extraidas del PDF de Hinton (1992): paginas 1-7, cada una en version completa (`page_0N.png`) y recorte de figura (`page_0N_img_01.png`).

Fuente: `Curso/Presenacion/2b_Hinton_Imagenes_PDF/` (identicas en REPO y workspace).

## ejemplos/

| Archivo | Contenido |
|---|---|
| `ejemplo_logica_proposicional.st` | Ejemplo de formalizacion en logica proposicional |

Fuente: `FilosofiaDeLasNeurociencias/Explicaciones/Archivo/Borradores/Sin titulo.md.st`
(se copio el `.st` real; el `.md` derivado es ruido segun `noise.txt` y fue omitido).

## Descartado explicitamente

- `2b_-_Hinton_-_Redes_Neuronales_que_Aprenden_de_la_Experiencia.md.st`: formalizacion standalone del texto completo; duplica contenido de `00_Hinton_Total.st` y no aparece en el arbol objetivo.
- `2b - Hinton - *.md` (traducciones del articulo): se gestionan en `02_Lecturas/` (lectura 2b), no aqui.
- `Sin titulo.md.st.md`: copia `.md` del `.st`; listada en `noise.txt`.
- `Curso/Presentacion/ST_Hinton_Ontologia/` (directorio vacio en workspace con typo de ruta): ignorado.
