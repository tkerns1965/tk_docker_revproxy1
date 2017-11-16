FROM nginx:1.13.6-alpine

RUN apk update && \
    apk add s6 && \
    mkdir /var/log/s6 && \
    mkdir /var/log/s6/cron && \
    mkdir /var/log/s6/nginx && \
    rm /etc/crontabs/root && \
    rm /etc/nginx/nginx.conf && \
    rm /usr/share/nginx/html/index.html

COPY s6 /s6
COPY root /etc/crontabs/
COPY nginx.conf /etc/nginx/
COPY index.html /usr/share/nginx/html/

CMD ["s6-svscan", "/s6"]
