# trabajo_final_entorno

# Inicializacion

Para crear la imagen es necesario tener docker instalado en la computadora host, y estando en el directorio del proyecto ejecutar el siguiente comando "sudo docker build -t "valentin" ."
Con la imagen creada, se puede correr ejecutando el comando "sudo docker run -it valentin".
Una vez hecho esto, se desplegará un menú iterativo con 6 opciones, las primeras 5 son funcionalidades que se aplican al texto de ejemplo, mientras la última termina la ejecución del programa.

# Texto de ejemplo
Si se quiere utilizar un texto de ejemplo distinto, debe modificarse el contenido de pruebas.txt antes de crear la imagen, si se hace después la imagen va a tener que ser creada nuevamente.
