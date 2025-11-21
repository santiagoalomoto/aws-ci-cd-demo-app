#!/bin/bash
echo "Deteniendo aplicación Node..."
pm2 stop aws-ci-cd-demo || true
pm2 delete aws-ci-cd-demo || true

