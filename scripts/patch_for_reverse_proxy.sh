#!/bin/sh

SECURE_HTTPS=$(cat <<END
if (isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] === 'https') {
    $_SERVER['HTTPS'] = 'on';
}
END
)

sed -i "1r $SECURE_HTTPS" "$WP_PATH/wp-config.php"




