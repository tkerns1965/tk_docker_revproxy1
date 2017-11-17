FROM nginx:1.13.6-alpine

RUN apk update && \
    apk add s6 certbot && \
    mkdir /var/www && \
    mkdir /var/www/html && \
    mkdir /var/log/s6 && \
    mkdir /var/log/s6/certbot && \
    mkdir /var/log/s6/cron && \
    mkdir /var/log/s6/nginx && \
    rm /etc/crontabs/root && \
    rm /etc/nginx/nginx.conf && \
    rm /usr/share/nginx/html/index.html

# certbot certonly --webroot -n --staging --dry-run --agree-tos -m tony.kerns.65@gmail.com -w /var/www/html -d tkhome.ignorelist.com,owncloud.tkhome.ignorelist.com && \

COPY s6 /s6
COPY certbot_renew.sh .
COPY root /etc/crontabs/
COPY nginx.conf /etc/nginx/
COPY index.html /usr/share/nginx/html/

CMD ["s6-svscan", "/s6"]
