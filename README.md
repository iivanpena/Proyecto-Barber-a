# 💈 Leolan Barber — Sistema de Gestión de Citas

![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![Google Calendar](https://img.shields.io/badge/Google_Calendar-4285F4?style=for-the-badge&logo=google-calendar&logoColor=white)

## Descripción
Sitio web profesional y responsivo diseñado para la barbería **Leolannbarberr** ubicada en Portomeiro. Este proyecto nace con el objetivo de digitalizar el negocio, automatizar el flujo de reservas de los clientes y exhibir un portafolio dinámico de los trabajos realizados, eliminando la necesidad de gestión manual por parte del barbero.

---

## Funcionalidades Clave

* **Pasarela de Citas Oficial:** Integración directa con el sistema de programación de *Google Calendar Appointment Scheduling*. Permite a los clientes reservar su hora mediante un pop-up flotante estilizado, integrado nativamente y sin salir de la web.
* **Galería Dinámica Inteligente:** Sistema de carga aleatoria mediante JavaScript que selecciona y muestra automáticamente trabajos recientes desde el almacenamiento local, optimizando la experiencia visual en cada visita.
* **Diseño Premium Responsive:** Interfaz de usuario adaptada con una estética oscura y dorada (*premium black & gold*), optimizada específicamente para una navegación fluida en dispositivos móviles.
* **Panel de Control Encriptado (Seguridad del Lado del Cliente):** Pantalla de login privada para la gestión de la agenda en tiempo real. Utiliza un sistema de autenticación basado en el hashing de la contraseña, impidiendo que la clave real pueda ser descubierta leyendo el código fuente.

---

## Tecnologías Utilizadas

* **HTML5 & CSS3 Semántico:** Estructuración limpia del documento junto con el uso de Variables CSS (`:root`) para una gestión de diseño ágil y escalable.
* **JavaScript Asíncrono (Vanilla JS):** Manipulación del DOM para la galería, control de fallos en imágenes y uso de la API nativa de criptografía del navegador.
* **Web Crypto API (SHA-256 / Base64):** Mecanismo de seguridad integrado en el navegador para codificar y validar el acceso de forma segura en un entorno estático.
* **Google Calendar Embed API:** Sincronización en la nube para la visualización del cuadrante completo de citas en el panel de administración.
* **GitHub Pages:** Infraestructura de despliegue y alojamiento estático gratuito de alta disponibilidad.

---

## Estructura del Proyecto

```text
├── index.html          # Sitio web principal de cara al cliente (Reservas y Portafolio)
├── admin.html          # Panel privado de administración con login encriptado
├── cortes/             # Repositorio local de imágenes para la galería dinámica
│   ├── corte1.jpg
│   ├── corte2.jpg
│   └── ...
└── README.md           # Documentación técnica del proyecto
```
## Nota de Seguridad sobre el Panel Admin
Para cumplir con las limitaciones de un servidor estático (sin servidor Backend ni bases de datos), la seguridad del acceso se gestiona mediante hashing unidireccional.

Cuando el administrador introduce la clave, JavaScript la procesa dinámicamente y compara el resultado con la "huella digital" almacenada en el código. De este modo, aunque un usuario inspeccione el código fuente con la tecla F12, la contraseña real es invisible por lo que un usuario normal no podría ver la contraseña desde esa única pestaña.

## Despliegue y Acceso
El proyecto se encuentra totalmente operativo y desplegado en producción bajo un dominio personalizado.

Sitio del Cliente: turbocleaan.es

Panel de Gestión: turbocleaan.es/admin

