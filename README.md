# 💈 Leolan Barber — Sistema de Gestión de Citas

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

Sitio del Cliente: https://turbocleaan.es

Panel de Gestión: https://turbocleaan.es/admin  (**contraseña abc123.**)
## Despregamento en local con Docker (Para Desenvolvedores)

Se es un desenvolvedor e queres testear esta web en local ou facer novas achegas, podes despregala rapidamente usando Docker sen necesidade de instalar ningún servidor web.

### Requisitos previos
* Ter instalado **Docker** no teu sistema (Docker Desktop en Windows ou docker.io en Linux).

### Pasos para o despregamento:

1. **Construír a imaxe de Docker:**
   Abre a terminal na carpeta raíz do proxecto e executa o seguinte comando para crear a imaxe da web:
   ```bash
   docker build -t barberia-leolan:latest .
Arrincar o contedor:
Una vez creada a imaxe, executa este comando para levantar o servidor en local:

Bash
docker run -d -p 8080:80 --name web-barberia barberia-leolan:latest
Probar a web:
Abre o teu navegador e entra en http://localhost:8080. Xa poderás ver e testear a web da barbería correndo no teu propio PC.

Deter o servidor:
Cando remates de facer probas, podes parar o contedor con:

Bash
docker stop web-barberia
