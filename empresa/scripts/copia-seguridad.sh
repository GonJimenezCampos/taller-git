#!/bin/bash
# ------------------------------------------------------------
# copia-seguridad.sh
# Copia de seguridad del servidor de ficheros al NAS.
# Se ejecuta cada noche a las 02:00 desde el cron de root:
#   0 2 * * * /opt/scripts/copia-seguridad.sh
# ------------------------------------------------------------

ORIGEN="/srv/ficheros"
DESTINO="/mnt/nas/copias"
FECHA=$(date +%Y-%m-%d)
LOG="/var/log/copia-seguridad.log"

# Comprobamos que el NAS está montado antes de copiar nada
if ! mountpoint -q /mnt/nas; then
    echo "$(date) ERROR: el NAS no está montado" >> "$LOG"
    exit 1
fi

echo "$(date) Empieza la copia de $ORIGEN" >> "$LOG"
rsync -a "$ORIGEN/" "$DESTINO/$FECHA/"
echo "$(date) Copia terminada en $DESTINO/$FECHA" >> "$LOG"
