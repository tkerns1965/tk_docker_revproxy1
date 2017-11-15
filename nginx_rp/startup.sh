#!/bin/sh

nginx -g "daemon off;"
crond -f
