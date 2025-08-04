#!/bin/bash

# ================================================================= #
# Script de Panel de Bienvenida para la Terminal de Linux (Bash)    #
# Muestra información útil del sistema cada vez que se abre.      #
# ================================================================= #

# --- 1. Definición de Colores para el Texto ---
# Esto hace que la salida sea más atractiva visualmente.
# Puedes cambiar los colores a tu gusto.
COLOR_TITULO="\e[1;36m"    # Cyan brillante
COLOR_SUBTITULO="\e[1;33m" # Amarillo brillante
COLOR_INFO="\e[0;37m"      # Blanco normal
COLOR_RESET="\e[0m"        # Resetea el color a la normalidad

# --- 2. Logo en Arte ASCII ---
# Puedes crear tu propio logo en cualquier generador de arte ASCII
# y pegarlo aquí.
mostrar_logo() {
    echo -e "${COLOR_TITULO}"
    echo "  ╔══════════════════════════════════════════════╗"
    echo "  ║       ¡Bienvenido a tu Terminal, Manuel!       ║"
    echo "  ╚══════════════════════════════════════════════╝"
    echo -e "${COLOR_RESET}"
}

# --- 3. Funciones para Obtener Información del Sistema ---

# Obtiene y muestra la fecha y hora actual.
mostrar_fecha() {
    echo -e "${COLOR_SUBTITULO}Fecha y Hora:${COLOR_RESET}"
    echo -e "${COLOR_INFO}  $(date +"%A, %d de %B de %Y, %H:%M:%S")${COLOR_RESET}"
    echo "" # Línea en blanco para espaciar
}

# Obtiene y muestra el clima de Bogotá usando la API de wttr.in
mostrar_clima() {
    echo -e "${COLOR_SUBTITULO}Clima en Bogotá:${COLOR_RESET}"
    # 'curl' descarga la información, y los parámetros '?format=3' la simplifican.
    echo -e "${COLOR_INFO}  $(curl -s wttr.in/Bogota?format=3)${COLOR_RESET}"
    echo ""
}

# Muestra el uso de RAM y Disco Duro.
mostrar_uso_recursos() {
    echo -e "${COLOR_SUBTITULO}Uso de Recursos:${COLOR_RESET}"
    # 'free -h' muestra el uso de RAM en formato legible.
    # 'df -h /' muestra el uso del disco para la partición principal.
    echo -e "${COLOR_INFO}$(free -h | grep Mem)${COLOR_RESET}"
    echo -e "${COLOR_INFO}$(df -h | grep '/$')${COLOR_RESET}"
    echo ""
}

# Revisa cuántos paquetes de software se pueden actualizar.
mostrar_actualizaciones() {
    echo -e "${COLOR_SUBTITULO}Actualizaciones Disponibles:${COLOR_RESET}"
    # Este comando actualiza la lista de paquetes (sin instalar nada)
    # y luego cuenta cuántos están listos para ser actualizados.
    # Se redirige la salida a /dev/null para no llenar la pantalla.
    sudo apt update > /dev/null 2>&1
    ACTUALIZACIONES=$(apt list --upgradable 2>/dev/null | grep -c 'upgradable')
    echo -e "${COLOR_INFO}  Tienes ${ACTUALIZACIONES} paquetes que se pueden actualizar.${COLOR_RESET}"
    echo -e "${COLOR_INFO}  (Ejecuta 'sudo apt upgrade' para instalarlas).${COLOR_RESET}"
    echo ""
}


# --- 4. Función Principal que Ejecuta Todo ---
main() {
    clear # Limpia la terminal antes de mostrar el panel
    mostrar_logo
    mostrar_fecha
    mostrar_clima
    mostrar_uso_recursos
    mostrar_actualizaciones
}

# --- 5. Llamada a la Función Principal ---
# Esta línea ejecuta la función 'main' cuando se corre el script.
main
