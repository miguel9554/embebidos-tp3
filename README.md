tp3 de sistemas embebdidos

# Ejemplo 1

En este ejemplo se crean dos tareas con igual prioridad, y estas manipulan leds y envian cadenas hardcodeadas por puerto serie.
Si no se aumenta el time slice, las cadenas llegan desordenadas por la velocidad de transmisión.

# Ejemplo 2

Igual al 1, solo que ahora las cadenas se reciben como parámetro

# Ejemplo 3

Igual a los 1 y 2, pero una tarea tiene más prioridad que la otra. Como esta la de mayor prioridad trabaja continuamente, la otra nunca se ejecuta.

# Ejemplo 4

Igual al 3, solo que ahora el delay se implementa con vTaskDelay, que delega el uso de la cpu. Por lo tanto, las dos pueden ejecutarse

# Ejemplo 5

Igual al 4, pero implementado con vTaskDelayUntil. Este usa un tiempo absoluto desde la última invocación. El tiempo de bloqueo debería ser menor

# Ejemplo 6

En este ejemplo, una tarea periodica tiene la mayor prioridad y se ejecuta con vTaskDelayUntil. Otras dos son continuas y de menor prioridad, por lo que se ejecución se va intercalando.

# Ejemplo 7 

Tenemos dos funciones que hacen un delay no bloqueante, cediendo el uso de la cpu. También se define una tarea para el estado idle, que incrementa un contador, de a uno por tick.

# Ejemplo 8

Dos tareas que cambian dinámicamente su prioridad, haciendo que el kernel cambie cual se está ejectuando. La 1 sube la priridad de la 2, haciendo que se ejecute esta, y la 2 se baja su prioridad, haciendo que vuelva a ejecutarse la 1.

# Ejemplo 9

La tarea 1 crea a la 2, que se empieza a ejecutar. Al final esta se destruye, dejando al micro en estado idle hasta el próximo ciclo.

# Ejemplo 10

Se utiliza una cola para comunicar procesos. Dos procesos envian, el que recibe tiene mayor prioridad. Este delega el uso de cpu hasta que haya un dato en la cola. La cpu ejecuta una de las tareas que envian, esta tarea envía y cede la cpu. Como hay un dato en la cola, se ejecuta la tarea que recibe. Así ad infintum

# Ejemplo 11

Ahora, los senders tienen más prioridad. El receptor recién se ejecutará cuando este llena la cola. Para saber de donde viene cada mensaje, estos son ahora estructuras que indican el mensaje y también quien lo envío.

# Ejemplo 12

Se usa un semaforo contador. El handler se activa cuando se activa el semaforo y lo maneja.

# Ejemplo 13

Se usa un semaforo binario. Hay dos tareas, una periodica, y la otra que se ejecuta cuando se activa el semaforo. La periodica activa el semaforo binario.

# Ejemplo 14

Se usan dos colas, una para enteros y una para strings. Una tarea periodica llena la cola de enteros y produce una ISR. En la interrupcion, otra tarea procesa estos enteros y llena la cola de strings. Se desbloquea la tarea que maneja la cola de strings y los procesa.

# Ejemplo 15

Se usa un mutex para imprimir una cadena larga sin que se interrumpan las tareas entre si

# Ejemplo 16

En esta aplicación, se imprime a través de un gatekeeper, que recibe datos de una cola y los va imprimiendo. Es la unica tarea que puede imprimir.



