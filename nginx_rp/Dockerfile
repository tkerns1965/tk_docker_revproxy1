FROM nginx:1.13.6-alpine

RUN rm /etc/nginx/nginx.conf && \
    rm /usr/share/nginx/html/index.html

COPY nginx.conf /etc/nginx/
COPY index.html /usr/share/nginx/html/
