#!/bin/bash
set -e

DEST="/home/deploy/app"

echo "----- stop: deteniendo la app en $DEST -----"

# Mover al directorio por si se necesita
cd "$DEST" || true

# Matar procesos node de esta app (index.js)
pids=$(pgrep -f "node index.js" || true)
if [ -n "$pids" ]; then
  echo "Matando procesos: $pids"
  kill -9 $pids || true
else
  echo "No se encontraron procesos node activos para index.js"
fi

echo "Stop completado."
