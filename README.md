🧭 Rumbo Libre: Gestión de Autenticación de Usuario 🚀
Descripción del Proyecto
Rumbo Libre es una aplicación móvil desarrollada con Flutter que se enfoca en establecer una robusta y visualmente atractiva base para la gestión de autenticación de usuarios. Proporciona un flujo de inicio de sesión y registro bien estructurado, junto con componentes de interfaz de usuario reutilizables que aseguran una experiencia de usuario consistente y unificada desde el primer momento. Aunque el nombre "Rumbo Libre" sugiere una posible expansión hacia funcionalidades de navegación, exploración o viajes, el enfoque actual del proyecto reside en ofrecer una sólida infraestructura de gestión de cuentas de usuario.

El Propósito del Proyecto
Rumbo Libre tiene como objetivo principal:

Establecer un sistema de autenticación de usuario: Permite a los usuarios registrarse e iniciar sesión de forma segura y sencilla.

Demostrar el uso de componentes de UI personalizables: Muestra cómo crear y reutilizar widgets de Flutter para mantener una consistencia de diseño.

Proporcionar una plantilla básica para futuros desarrollos: Sirve como un punto de partida para aplicaciones más complejas que requieran gestión de usuarios.

¿Para Quién es Útil?
Este proyecto es ideal para:

Desarrolladores de Flutter: Que buscan un ejemplo claro y funcional de un flujo de autenticación completo (splash, login, registro) con una UI limpia.

Estudiantes y Aprendices: Interesados en comprender la estructura de una aplicación Flutter, la creación de componentes personalizados y la validación de formularios.

Equipos de Desarrollo: Como una base sólida para iniciar proyectos que requieran un módulo de autenticación de usuario bien diseñado.

✨ Características Destacadas
🔐 Flujo de Autenticación Completo:

Pantalla de Splash: Una pantalla de bienvenida animada que sirve como punto de entrada de la aplicación.

Inicio de Sesión: Permite a los usuarios ingresar sus credenciales (correo y contraseña).

Registro de Cuentas: Facilita la creación de nuevas cuentas de usuario.

🎨 Componentes de Interfaz de Usuario Personalizados:

BotonPersonalizado: Botones reutilizables con estilos definidos y efectos visuales al interactuar.

CampoTextoPersonalizado: Campos de entrada de texto estandarizados con iconos, validación y opción de visibilidad para contraseñas.

🛡️ Validación de Formularios: Implementa validaciones básicas para asegurar la integridad de los datos ingresados en los formularios de login y registro.

🖼️ Diseño Visual Coherente:

Utiliza un gradiente de colores (verde/turquesa) como fondo principal en todas las pantallas de autenticación.

Incluye un logotipo central (assets/logo.png) que refuerza la identidad de la marca.

➡️ Navegación Intuitiva: Transiciones fluidas entre las pantallas de splash, login y registro.

🛠️ Tecnologías Utilizadas
Lenguaje de Programación: Dart

Framework de Desarrollo: Flutter

Gestión de UI: Material Design

Activos: assets/logo.png

🚀 Cómo Instalar y Ejecutar
Para poner en marcha Rumbo Libre en tu entorno local, asegúrate de tener Flutter SDK correctamente configurado.

Prerrequisitos
Flutter SDK: Se recomienda la última versión estable.

Un editor de código (VS Code, Android Studio).

Un dispositivo o emulador configurado para ejecutar aplicaciones Flutter.

Pasos de Instalación
Clona el repositorio:

git clone https://github.com/tu_usuario/rumbo_libre.git
cd rumbo_libre

(Nota: Reemplaza https://github.com/tu_usuario/rumbo_libre.git con la URL real de tu repositorio y rumbo_libre con el nombre de tu proyecto en tu máquina si es diferente.)

Instala las dependencias de Flutter:

flutter pub get

Asegúrate de que el archivo del logo esté en la carpeta correcta:
Verifica que la imagen logo.png esté ubicada en la carpeta assets/ (o la que hayas configurado) y declarada en tu archivo pubspec.yaml bajo la sección assets.

Ejemplo de pubspec.yaml:

flutter:
  uses-material-design: true
  assets:
    - assets/

Cómo Ejecutar la Aplicación
Ejecuta la aplicación:

flutter run

La aplicación se lanzará en el dispositivo o emulador que tengas configurado.

📈 Cómo Usar la Aplicación
Rumbo Libre te guiará a través de su proceso de autenticación.

Flujo de Usuario
Pantalla de Splash: Al iniciar la aplicación, verás una pantalla de bienvenida con el logo y un indicador de carga.

Pantalla de Inicio de Sesión (PantallaLogin): Tras unos segundos, serás redirigido a la pantalla de inicio de sesión.

Ingresa un correo electrónico y una contraseña.

Si no tienes una cuenta, pulsa el botón "¿No tienes cuenta? Regístrate" para ir a la pantalla de registro.

Pantalla de Registro (PantallaRegistro):

Ingresa un correo electrónico, una contraseña y confírmala.

Pulsa el botón "Registrar".

Puedes volver a la pantalla de inicio de sesión pulsando el botón "¿Ya tienes cuenta? Inicia sesión".
