# Usamos un servidor web lixeiro (Nginx) para servir a nosa páxina
FROM nginx:alpine

# Copiamos todos os arquivos da nosa barbería dentro do servidor Docker
COPY . /usr/share/nginx/html

# Expoñemos o porto 80 para poder ver a web no navegador
EXPOSE 80