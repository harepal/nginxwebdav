#FROM nginx:stable
#1.18.0 stable le 20200502
FROM nginx:1.18.0

RUN apt-get update && apt-get install -y nginx-extras && rm /etc/nginx/sites-enabled/*

VOLUME /data
VOLUME /pass

COPY default.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
