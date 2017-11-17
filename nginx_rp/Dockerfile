FROM nginx:1.13.6-alpine

RUN apk update && \
    apk add s6 certbot && \
    mkdir /var/www && \
    mkdir /var/www/html && \
    mkdir /var/log/s6 && \
    mkdir /var/log/s6/certbot && \
    mkdir /var/log/s6/cron && \
    mkdir /var/log/s6/nginx && \
    rm /etc/nginx/nginx.conf && \
    rm /usr/share/nginx/html/index.html

# rm /etc/crontabs/root && \

COPY s6               /root/s6
COPY certbot_renew.sh /root/
COPY crontab_certbot  /root/
# COPY root             /etc/crontabs/
COPY nginx.conf       /etc/nginx/
COPY index.html       /usr/share/nginx/html/

RUN crontab /root/crontab_certbot

CMD ["s6-svscan", "/root/s6"]
