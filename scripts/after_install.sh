#!/bin/bash
set -e

# Ruta destino donde CodeDeploy copia los archivos
DEST="/home/deploy/app"

echo "----- after_install: preparando app en $DEST -----"

# Asegúrate de que el directorio exista
mkdir -p "$DEST"

# Moverse al directorio (si CodeDeploy ya colocó los archivos ahí)
cd "$DEST" || exit 1

# Instalar dependencias
echo "Instalando dependencias npm..."
npm ci

# Opcional: build si tienes step de build (por ejemplo transpilar)
if [ -f package.json ]; then
  if npm run | grep -q "build"; then
    echo "Ejecutando npm run build..."
    npm run build || echo "build script no necesario/ejecutable"
  fi
fi

echo "----- after_install completado -----"
