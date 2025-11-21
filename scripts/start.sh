#!/bin/bash
set -e

DEST="/home/deploy/app"
LOGFILE="/home/deploy/app/app.log"

echo "----- start: lanzando la app desde $DEST -----"

cd "$DEST" || exit 1

# Intentamos matar procesos node de instancias previas (si existen)
pids=$(pgrep -f "node index.js" || true)
if [ -n "$pids" ]; then
  echo "Matando procesos previos: $pids"
  kill -9 $pids || true
fi

# Inicia en background con nohup para que persista después del logout
nohup npm start > "$LOGFILE" 2>&1 &

echo "App iniciada. Logs -> $LOGFILE"
