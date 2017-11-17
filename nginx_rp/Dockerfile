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

COPY s6                     /s6
COPY root/*                 /root/
COPY etc_nginx/*            /etc/nginx/
COPY usr_share_nginx_html/* /usr/share/nginx/html/

RUN (crontab -l ; cat /root/crontab_certbot) | crontab -

CMD ["s6-svscan", "/s6"]
