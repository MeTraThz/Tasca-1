# Tasca-1
###### Repositori per guardar els scripts de PowerShell

$file sirve para buscar el fichero o directorio.<br>
$dir determina la ruta en la que buscará el script.<br>
$gci buscará el fichero o directorio, eludiendo errores, en la ruta establecida.<br>

NOTA 1: Los * sirven para que no tengas que poner la ruta entera, solo con poner C:\ ya buscará en todo tu ordenador.<br>
NOTA 1.1: Lo mismo ocurre con los ficheros / directorios, por si no recuerdas el nombre completo, que aún así lo busque en tu ordenador.<br>
NOTA 2: NO localiza ficheros ocultos.<br>

## Script 1

### Menú de gestión

Las 20 primeras líneas del código son, en esencia, del diseño del menú de gestión, el cual será lo primero que veas al ejecutar el script.

### Switch (El Case del PowerShell)

Dentro del Switch, también conocido como Case en la mayoría de lenguajes, veremos 4 opciones; cada una de estas corresponde a una acción del programa.
1. Introduces el nombre del fichero en una variable. Si el nombre introducido es un argumento vacío, directamente, cancelas la operación.
2. Introduces el nombre de la ruta en la que buscar el fichero. Pueden ser rutas absolutas o rutas relativas. (Mirar NOTAS de la línea 8 a la línea 10).
3. El programa busca la ubicación del fichero y, si tu fichero o directorio coincide con alguna ruta de tu ordenador, lo mostrará por pantalla; si no, te dirá que no ha sido posible encontrar tu fichero o directorio. Tiene una opción de contención de errores, por si te da por utilizarlo sin introducir todos los campos, o ninguno.
4. Una opción por si te has equivocado y has ejecutado mi script sin querer o, simplemente, quieres salir del programa.
5. Contención de errores por si el usuario no sabe contar del 1 al 4.

Todo el programa está englobado por un bucle, así puedo mantener el menú de gestión, aprovechando los clears, y darle una cierta estética al programa.

## Script 2

### Menú de gestión

Las 20 primeras líneas del código son, en esencia, del diseño del menú de gestión, el cual será lo primero que veas al ejecutar el script.

### Switch (El Case del PowerShell)

Dentro del Switch, también conocido como Case en la mayoría de lenguajes, veremos 4 opciones; cada una de estas corresponde a una acción del programa.
1. Introduces el nombre del fichero en una variable. Si el nombre introducido es un argumento vacío, directamente, cancelas la operación.
2. Introduces el nombre de la ruta en la que buscar el fichero. Pueden ser rutas absolutas o rutas relativas. (Mirar NOTAS de la línea 8 a la línea 10).
2.1. A parte de buscar todas las coincidencias de tu archivo o directorio en todo tu disco duro, para que no hayan problemas te pedirá que, de todas las rutas absolutas que te ha mostrado anteriormente, copies y pegues la ruta donde se haye el archivo o directorio que te interesa copiar.
3. Introduce la ruta ABSOLUTA en la que copiarás el directorio. (Ruta Objetivo).
4. El programa busca la ubicación del fichero y, si tu fichero o directorio coincide con alguna ruta de tu ordenador, lo copiará al directorio objetivo. Tiene una opción de contención de errores, por si te da por utilizarlo sin introducir todos los campos, o ninguno PERO no tiene contención de errores por si introduces la ruta mal o el fichero no existe, el programa petará.
5. Una opción por si te has equivocado y has ejecutado mi script sin querer o, simplemente, quieres salir del programa.
6. Contención de errores por si el usuario no sabe contar del 1 al 5.

Todo el programa está englobado por un bucle, así puedo mantener el menú de gestión, aprovechando los clears, y darle una cierta estética al programa.
