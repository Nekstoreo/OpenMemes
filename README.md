# OpenMemes

OpenMemes es una aplicación que permite a los usuarios crear memes apartir de un enunciado, la aplicación utiliza OpenAI para procesar el enunciado, el cual es enviado a un servidor que se encarga de generar la imagen y devolverla al usuario.
# Stack del Proyecto
- Flutter (Frontend): 
Usaremos Flutter para crear la aplicación móvil, la cual se encargará de enviar los enunciados a un servidor y mostrar la imagen generada por el servidor.
- Firebase Sorage (Database):
Usaremos Firebase Storage para almacenar las imágenes generadas.
- Heroku (Cloud):
Usaremos Heroku para alojar el servidor que se encargará de generar las imágenes.
# Apis
- Memegen API https://github.com/jacebrowning/memegen:
Usaremos esta API para generar memes mediante programación basados únicamente en las URL solicitadas .
- API OpenAI:
Usaremos esta API para generar memes mediante programación basados en el texto solicitado.