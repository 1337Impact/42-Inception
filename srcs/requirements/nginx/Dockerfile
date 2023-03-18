FROM debian:buster

RUN apt-get update && apt-get install nginx -y

COPY requirements/nginx/conf/nginx.conf /etc/nginx/sites-enabled/wordpress

WORKDIR /etc/nginx/ssl

COPY requirements/nginx/tools/mbenkhat.42.fr.crt .
COPY requirements/nginx/tools/mbenkhat.42.fr.key .

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
