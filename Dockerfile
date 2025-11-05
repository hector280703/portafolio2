# Usamos una imagen ligera de Nginx
FROM nginx:alpine

# Copiamos todos los archivos del sitio al directorio que Nginx sirve
COPY . /usr/share/nginx/html

# Exponemos el puerto 80
EXPOSE 80

# Iniciamos Nginx en modo foreground
CMD ["nginx", "-g", "daemon off;"]

