# Servidor de impresión

Para no tener que instalar cada impresora en cada equipo, las impresoras
se comparten desde un servidor de impresión con CUPS.

- **Máquina:** Raspberry Pi 5 en la sala del rack
- **Sistema:** Raspberry Pi OS Lite
- **IP fija:** 192.168.10.51
- **Panel de administración:** http://192.168.10.51:631

## Añadir una impresora en un equipo

- **Windows:** Configuración → Impresoras → Agregar dispositivo → «La impresora que deseo no está en la lista» → `http://192.168.10.51:631/printers/NOMBRE`
- **Ubuntu:** Configuración → Impresoras → Añadir; aparecen solas por la red.
