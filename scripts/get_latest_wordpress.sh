#!/bin/sh

wget -c https://en-za.wordpress.org/latest-en_ZA.zip && unzip latest-*.zip -d /var/www/
rm -rf latest-*.zip