FROM nginx

WORKDIR /usr/share/nginx/html/

COPY . src /usr/share/nginx/html/



EXPOSE 80