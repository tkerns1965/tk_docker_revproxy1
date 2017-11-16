#!/bin/sh
s6-svscan /s6
echo "Hello startup.sh!"
# certbot certonly --webroot -n --staging --dry-run --agree-tos -m tony.kerns.65@gmail.com -w /var/www/html -d tkhome.ignorelist.com,owncloud.tkhome.ignorelist.com && \
