#!/bin/sh

WP_PATH="/var/www/wordpress"

SSL_FIX="if (isset(\$_SERVER['HTTP_X_FORWARDED_PROTO']) && \$_SERVER['HTTP_X_FORWARDED_PROTO'] === 'https') { \$_SERVER['HTTPS'] = 'on'; }"

sed -i "2i $SSL_FIX" "$WP_PATH/wp-config.php"
