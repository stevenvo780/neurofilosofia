# Resumen breve por slide — Hinton 20 min

Este archivo está pensado como machete limpio para hablar sin leer. Cada slide tiene:

- **Título corto**
- **Idea central**
- **Qué decir en 1–3 líneas**
- **Siguiente** para pasar al próximo slide sin quedarte pensando en vivo

---

## S00 — Entrada

**Idea central:** ambiente y acceso móvil.

**Decir:** “Si quieren, pueden seguir la presentación desde el celular con el QR.”

**Siguiente:** “Empiezo con la pregunta central.”

---

## S01 — Apuesta

**Idea central:** Hinton no solo propone una técnica; propone una imagen de la cognición.

**Decir:** “La máquina que aprende a ser cerebro no es una verdad obvia, sino una apuesta. La pregunta será si esto describe el cerebro o si funciona como un modelo potente para investigarlo.”

**Siguiente:** “Primero veamos qué simplifica Hinton.”

---

## S02 — Sinapsis

**Idea central:** aprender es cambiar conexiones.

**Decir:** “La neurona real es compleja, pero Hinton retiene algo crucial: la experiencia cambia la eficacia de las conexiones. La información no vive en un punto; está distribuida.”

**Orden interno:** Dendrita → Soma → Axón → Sinapsis. Si vas muy rápido, deja el peso conceptual en `Sinapsis`.

**Siguiente:** “Con esa idea mínima aparece la neurona artificial.”

---

## S03 — Idealización

**Idea central:** la neurona artificial simplifica para volver tratable el aprendizaje.

**Decir:** “Hinton no copia la neurona biológica, la idealiza. Se pierde realismo, pero se gana un modelo entrenable. Filosóficamente, la idealización no es un defecto automático; puede ser una condición de conocimiento.”

**Siguiente:** “Lo decisivo ocurre cuando estas unidades se organizan en capas.”

---

## S04 — Capas ocultas

**Idea central:** las representaciones emergen del entrenamiento.

**Decir:** “Las unidades ocultas son clave porque nadie les dice qué representar. Lo descubren al entrenarse. Ahí Hinton se separa del simbolismo clásico.”

**Siguiente:** “¿Cómo aprenden esas capas? Ajustando pesos.”

---

## S05 — Error

**Idea central:** aprender es corregirse.

**Decir:** “La red produce una salida, compara con la correcta y ajusta sus conexiones. El conocimiento queda inscrito en los pesos, no en una regla escrita de antemano.”

**Orden interno:** Presentar → Evaluar → Calcular error → Actualizar.

**Siguiente:** “La herramienta técnica que permite eso es la retropropagación.”

---

## S06 — Backprop

**Idea central:** la retropropagación vuelve entrenables las redes multicapa.

**Decir:** “El error se reparte hacia atrás para corregir eficientemente los pesos. Fue decisiva para el conexionismo, pero abre un problema: funciona muy bien sin ser claramente plausible como mecanismo biológico.”

**Orden interno:** Forward pass → Backprop pass → Error de activación → Error de entrada → Error del peso → Propagar hacia atrás.

**Siguiente:** “Y ahí aparece la pregunta filosófica fuerte.”

---

## S07 — Funciona, pero...

**Idea central:** éxito computacional no equivale automáticamente a explicación neurocientífica.

**Decir:** “Las redes clasifican y reconocen patrones sin reglas explícitas. Pero que un modelo funcione no significa todavía que describa cómo aprende el cerebro.”

**Siguiente:** “Hinton mismo reconoce los límites.”

---

## S08 — Costo explicativo

**Idea central:** la potencia técnica tiene un precio biológico.

**Decir:** “La retropropagación requiere supervisión, escala mal, puede caer en mínimos locales y no tiene un mecanismo biológico claro. El modelo gana como ingeniería, pero no queda cerrada su validez explicativa.”

**Siguiente:** “Por eso Hinton mira el aprendizaje no supervisado.”

---

## S09 — Aprender sin maestro

**Idea central:** una buena representación comprime y conserva estructura.

**Decir:** “La pregunta es cómo aprender sin etiquetas. Hinton responde que una buena representación debe ser económica y reconstructiva: comprimir sin destruir.”

**Orden interno:** Apertura → tab `PCA` → tab `Competitivo` → tab `Kohonen` → tab `Hebb` → tabla comparativa.

**Apoyo rápido:**
- `PCA`: descubre estructura sin maestro.
- `Competitivo`: diferencia categorías sin etiquetas previas.
- `Kohonen`: ordena topológicamente patrones semejantes.
- `Hebb`: aprendizaje local, más plausible biológicamente.

**Siguiente:** “Entonces surge otra pregunta: dónde está una representación.”

---

## S10 — Distribución

**Idea central:** un concepto no vive en una sola unidad.

**Decir:** “Hinton privilegia representaciones distribuidas: el significado aparece en patrones colectivos. Las recurrentes agregan memoria y dinámica temporal.”

**Siguiente:** “Y eso conecta con evidencia biológica.”

---

## S11 — Población

**Idea central:** el cerebro también puede codificar de manera distribuida.

**Decir:** “El experimento de Sparks muestra que al silenciar neuronas la función no colapsa; se reorganiza en la población restante. Eso refuerza la idea de código demográfico.”

**Siguiente:** “Con eso llegamos a la convergencia entre red y cerebro.”

---

## S12 — Historia larga

**Idea central:** Hinton pertenece a una tradición, no a un milagro aislado.

**Decir:** “La historia que va de McCulloch y Pitts a los modelos actuales muestra la fertilidad del lenguaje computacional. Pero Daugman nos obliga a preguntar si esa fertilidad es también verdad descriptiva.”

**Siguiente:** “El mejor argumento empírico de Hinton es Andersen y Zipser.”

---

## S12b — Convergencia

**Idea central:** convergencia funcional sí; convergencia mecanística no demostrada.

**Decir:** “Andersen y Zipser muestran que una red puede desarrollar unidades funcionalmente parecidas a neuronas reales. Eso es muy fuerte, pero no prueba que cerebro y red aprendan del mismo modo.”

**Siguiente:** “Entonces ya puedo cerrar la tesis.”

---

## S13 — Cierre

**Idea central:** Hinton abre un programa de investigación, no una verdad final.

**Decir:** “La red neuronal artificial no es una descripción del cerebro, sino una apuesta teórica muy poderosa. Su éxito computacional es indiscutible; su alcance explicativo sigue siendo una cuestión filosófica abierta.”

**Última frase sugerida:** “Hinton no demuestra que el cerebro sea una computadora; muestra por qué pensar el aprendizaje como representación distribuida se volvió una hipótesis imposible de ignorar.”

---

## Orden de prioridad si te falta tiempo

1. `S01`
2. `S07`
3. `S08`
4. `S09`
5. `S11`
6. `S12`
7. `S13`

## Slides donde puedes recortar sin perder el eje filosófico

- `S02`
- `S05`
- `S10`
- `S12b`

## Regla práctica

Si dudas entre explicar un detalle técnico o reforzar una tensión filosófica, elige la tensión filosófica.