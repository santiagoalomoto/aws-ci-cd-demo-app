#!/bin/bash
echo "Iniciando aplicación Node..."
cd /var/www/aws-ci-cd-demo
npm install --production
pm2 start server.js --name aws-ci-cd-demo

