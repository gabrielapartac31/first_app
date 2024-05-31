FROM ubuntu:22.04

WORKDIR /web_app

RUN apt update

RUN apt install nginx -y

RUN rm /var/www/html/index.nginx-debian.html

COPY nginx/index.html /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]