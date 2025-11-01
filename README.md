
# 📱 Primera Aplicación - Contador y Presentación ➕👾

Mi primera aplicación en Flutter para el primer proyecto de Programación III. 

Consiste en una menu como pantalla principal que te permite ir a la pantalla de contador donde interactuando con los botones puedes alterar el numero que sale en pantalla.
 
Tambien esta la pantalla de presentación donde a través de un avatar y de un boton se puede desplegar más informacion sobre mi.


## 📱 Caracteristicas 😎

- ## 📱 Menu Principal 🏠

Es el archivo home_screen.dart. Funciona con un ListTile que toma como opciones y rutas las pantallas agregadas al archivo app_routes.dart.

Desde aqui puedes ir al contador o a mi presentación.

- ## 📱Contador ➕

Es el archivo counter_screen.dart. Funciona con un StatefullWidget y la creacion de un estado _CounterScreenState para que los metodos de cada boton (Sumar +1, Restar -1, etc) funcionen a tiempo real durante la ejecución de la aplicación.

     📱 Botones disponibles 🎛️
        - ➕ Sumar +1: Al apretarlo se suma 1 al contador.
        - ➖ Restar -1: Al apretarlo se resta 1 al contador.
        - ✖️ Multiplicar x2: Al apretarlo se multiplica por 2 el numero actual.
        - ➗ Dividir entre 2: Al apretarlo se divide entre 2 el numero actual.
        - 🔄️ Resetear: Al apretarlo el contador regresa a 0.

- ## 📱 Presentación 👾

Es el archivo presentation_screen.dart. Cuenta con un CircleAvatar y 2 Text que ofrecen una pequeña presentación sobre mi.

Abajo se encuentra un FilledButton "Saber Más" que al apretarlo despliega una alerta o tarjeta con una informacion más detallada sobre mi como mi juego favorito, etc.

- ## 📱Tema Oscuro Funcional 🌑

En el archivo app_theme.dart me encargue de configurar el tema claro o default y el oscuro para que ambos funcionen y se vean bien, para cambiarlo modificar en el main.dart la siguiente linea:

    - ☀️ (Por defecto): theme: AppTheme.lightTheme,
    ******************************************************************
    - 🌑 (Modo Oscuro Activado): theme: AppTheme.darkTheme,



## 📱 Autor: 😎

- [@Andres-14](https://github.com/Andres-14)

