@echo off
echo Arrêt du conteneur existant...
docker rm -f demo-devops 2>nul

echo Vérification/téléchargement de l'image nginx:alpine via un mirror rapide...
docker pull mirror.gcr.io/library/nginx:alpine || docker pull registry.docker-cn.com/nginx:alpine || docker pull nginx:alpine

echo.
echo Démarrage du site avec live-reload...
docker run -d ^
  --name demo-devops ^
  -p 8080:80 ^
  -v "%cd%":/usr/share/nginx/html:ro ^
  nginx:alpine

echo.
echo Site en live sur http://localhost:8080
echo (les modifications sont visibles instantanément !)
timeout /t 3
start http://localhost:8080