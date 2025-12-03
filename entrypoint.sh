#!/bin/sh

echo "Starting server..."

php-fpm84 -D 

# Start Nginx in the foreground
nginx -g "daemon off;"