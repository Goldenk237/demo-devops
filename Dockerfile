# Utilise une image Nginx officielle comme base
FROM nginx:alpine

# Copie ton fichier HTML dans le dossier par défaut de Nginx
COPY index.html /usr/share/nginx/html/index.html

# Expose le port 80 pour le web
EXPOSE 80