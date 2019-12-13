tp3 de sistemas embebdidos

# Ejemplo 1

En este ejemplo se crean dos tareas con igual prioridad, y estas manipulan leds y envian cadenas hardcodeadas por puerto serie.
Si no se aumenta el time slice, las cadenas llegan desordenadas por la velocidad de transmisión.

# Ejemplo 2

Igual al 1, solo que ahora las cadenas se reciben como parámetro
