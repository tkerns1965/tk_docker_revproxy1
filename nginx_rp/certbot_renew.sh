#!/bin/sh
# certbot certonly --webroot -n --staging --dry-run -w /var/www/html -d tkhome.ignorelist.com,owncloud.tkhome.ignorelist.com
certbot renew --staging --dry-run
# certbot renew
