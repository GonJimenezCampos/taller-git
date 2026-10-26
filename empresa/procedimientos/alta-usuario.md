# Procedimiento: alta de un nuevo usuario

1. Crear la cuenta en el servidor de ficheros: `sudo adduser nombre.apellido`
2. Añadirla al grupo de su departamento: `sudo usermod -aG administracion nombre.apellido`
3. Crear su carpeta personal en `/srv/ficheros/usuarios/`.
4. Apuntar el equipo que se le asigna en `inventario/equipos.md`.
5. Darle una contraseña temporal **en persona** (nunca por email) y obligarle a cambiarla en el primer inicio de sesión: `sudo passwd -e nombre.apellido`
