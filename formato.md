## ZONA
Sólo hay una zona por proyecto. Cada zona está conformada por un número de niveles. Posee los valores de **ancho** y **alto**.
### NIVEL
Los niveles son independientes entre sí. Un nivel guarda cuatro tipos de datos: **Hitboxes** para ser usados en colisiones, **capas** que le dan su apariencia al nivel, **puertas** que son rutas que envían al jugador a otro nivel y **escenas** que son posiciones fijas predeterminadas para la cámara. Posee los valores de **ancho** y **alto**.
#### HITBOXES
Hay dos tipos de hitboxes: enteros y huecos. Los enteros son definidos por un sólo **arreglo de vértices**, mientras que los huecos tienen un segundo **arreglo de vértices** que define el "interior" del hitbox.
#### CAPAS
Las capas se usan para guardar los sprites que conforman el nivel en una sola imágen. Cada capa tiene un valor de **profundidad** que se usa para definir su posición en el eje Y dentro de Unity. 
#### PUERTAS
Las puertas sirven para transportar al jugador de un nivel a otro. Cada puerta se ubica en una pared y se relaciona mediante su **ID** a otra puerta en otro nivel.
#### ESCENAS
Las escenas son posiciones preestablecidas para la cámara. Tiene un valor de **X**, **Y** y **escala**. Todas las cámaras tienen la misma relación de aspecto.