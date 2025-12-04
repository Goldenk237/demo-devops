# Dockerfile (nouveau Dockerfile pour le hot-reload)
FROM nginx:alpine

# Copie TOUT le dossier courant dans le conteneur
COPY . /usr/share/nginx/html

# Expose le port
EXPOSE 80