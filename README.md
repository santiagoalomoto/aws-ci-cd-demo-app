# aws-cicd-demo-app

Demo: CI/CD con GitHub → AWS (CodeBuild/CodeDeploy) → Cloudways (Git deploy)

## Estructura
- `index.js` - app Node.js mínima
- `package.json`
- `buildspec.yml` - instrucciones para CodeBuild
- `appspec.yml` - instrucciones y hooks para CodeDeploy
- `scripts/` - scripts para deploy (after_install, start, stop)

## Pasos rápidos (local -> GitHub -> AWS -> Cloudways)
1. Ajusta los archivos si necesitas cambiar puerto o rutas.
2. Asegúrate de que `scripts/*.sh` tengan permiso de ejecución:
   ```bash
   chmod +x scripts/*.sh
