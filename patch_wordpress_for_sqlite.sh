#!/bin/sh

wget -c https://downloads.wordpress.org/plugin/sqlite-database-integration.2.2.15.zip
unzip sqlite-database-integration*.zip -d ./wordpress/wp-content/plugins/
mv -v ./wordpress/wp-content/plugins/sqlite-database-integration/db.copy ./wordpress/wp-content/db.php
rm sqlite-database-integration*.zip

# todo add wp-config

echo "SQLite for WP installed"