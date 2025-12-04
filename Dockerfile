FROM alpine

RUN apk add nginx curl php84 php84-fpm php84-pdo_mysql php84-mysqli php84-curl php84-json php84-gd php84-mbstring php84-sqlite3 php84-pdo_sqlite

RUN touch /var/log/nginx/access.log

RUN mkdir /var/www/html

COPY ./configs/nginx.conf /etc/nginx/http.d/default.conf
COPY ./configs/php.ini /etc/php84/conf.d/custom.ini

RUN mkdir /scripts
COPY ./scripts/ /scripts/

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 80
CMD ["./entrypoint.sh"]
