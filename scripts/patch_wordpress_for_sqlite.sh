#!/bin/sh

WP_PATH="/var/www/wordpress"

wget -c https://downloads.wordpress.org/plugin/sqlite-database-integration.2.2.15.zip
unzip sqlite-database-integration*.zip -d "$WP_PATH/wp-content/plugins/"
mv -v "$WP_PATH/wp-content/plugins/sqlite-database-integration/db.copy" "$WP_PATH/wp-content/db.php"
rm sqlite-database-integration*.zip

mv "$WP_PATH/wp-config-sample.php" $WP_PATH/wp-config.php
sed -i "/put your unique phrase here/d" $WP_PATH/wp-config.php
sed -i '1,/localhost/s//sqlite/' $WP_PATH/wp-config.php

curl -s https://api.wordpress.org/secret-key/1.1/salt/ > wp_salts.php
sed -i '1r wp_salts.php' "$WP_PATH/wp-config.php"
rm wp_salts.php

echo "SQLite for WP installed"