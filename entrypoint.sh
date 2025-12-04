#!/bin/sh

echo "Starting server..."

php-fpm84 -D

WP_CONFIG="/var/www/wordpress/wp-config.php"
if [[ -f "$WP_CONFIG" ]]; then
    echo "File $WP_CONFIG exists we will not install wordpress."
else
    echo "File $WP_CONFIG does not exist installing wordpress."
    source /scripts/get_latest_wordpress.sh
    source /scripts/patch_wordpress_for_sqlite.sh
fi

# Start Nginx in the background
nginx -g "daemon on;"

tail -f /var/log/nginx/*