FROM nginx:1.13.6-alpine

RUN apk update && \
    apk add s6 && \
    rm /etc/nginx/nginx.conf && \
    rm /usr/share/nginx/html/index.html

COPY nginx.conf /etc/nginx/
COPY index.html /usr/share/nginx/html/
COPY s6 /s6
COPY root /etc/crontabs/

CMD ["s6-svscan", "/s6"]
