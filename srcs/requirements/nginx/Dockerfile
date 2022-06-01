FROM debian:buster

RUN apt-get update && apt-get install -y nginx openssl

COPY ./default /etc/nginx/sites-enabled/default

COPY ./script.sh /home

EXPOSE 443

ENTRYPOINT [ "/home/script.sh" ]

CMD ["nginx", "-g", "daemon off;"]
