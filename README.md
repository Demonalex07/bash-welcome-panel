Panel de Bienvenida para Terminal Linux
Un script de Bash personalizable que se ejecuta cada vez que abres una nueva terminal en Ubuntu, mostrándote información útil y dinámica del sistema para mejorar tu productividad.

<img width="816" height="581" alt="Captura desde 2025-08-04 15-24-21" src="https://github.com/user-attachments/assets/6bcc78ae-3a39-4b7b-80ec-176af2e26c52" />
















✨ Funcionalidades
Este panel de bienvenida te ofrece de un vistazo:

Un saludo personalizado con un logo en arte ASCII.

La fecha y hora actual formateada de manera legible.

El pronóstico del tiempo local en tiempo real, obtenido de la API de wttr.in.

Uso de recursos del sistema, incluyendo la memoria RAM y el espacio en el disco duro principal.

Notificación de actualizaciones, indicando cuántos paquetes de software están listos para ser actualizados.

🚀 Instalación
Para configurar este panel en tu propio sistema Ubuntu, sigue estos sencillos pasos:

Clona el repositorio (o descarga el script panel_bienvenida.sh):

git clone https://github.com/tu-usuario/bash-welcome-panel.git
cd bash-welcome-panel

Otorga permisos de ejecución al script:

chmod +x panel_bienvenida.sh

Añade el script a tu .bashrc para que se ejecute automáticamente cada vez que abras una nueva terminal:

echo "~/ruta/completa/a/bash-welcome-panel/panel_bienvenida.sh" >> ~/.bashrc

Asegúrate de reemplazar ~/ruta/completa/a/ con la ruta real donde clonaste el repositorio.

¡Listo! Cierra tu terminal actual y abre una nueva para ver el panel en acción.

🔧 Personalización
Puedes modificar fácilmente el script panel_bienvenida.sh para adaptarlo a tus necesidades:

Cambiar el logo: Reemplaza el arte ASCII dentro de la función mostrar_logo().

Cambiar la ciudad del clima: Modifica la URL de wttr.in en la función mostrar_clima().

Ajustar los colores: Cambia los códigos de color definidos al principio del script.

🛠️ Tecnologías Utilizadas
Bash Scripting

Linux Command-Line Tools (date, curl, free, df, apt)

API Integration (wttr.in)

Proyecto creado por Manuel Daza.
