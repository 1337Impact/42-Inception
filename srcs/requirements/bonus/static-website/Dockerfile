From debian:buster

RUN apt-get update && apt-get install -y nginx

EXPOSE 80

WORKDIR /var/www/html

COPY requirements/bonus/static-website/tools/index.html .

CMD ["nginx", "-g", "daemon off;"]
