#!/bin/bash

CONTAINER_NAME="wp-blog-mysql-1"
DB_NAME="wordpress"
DB_USER="admin"
DB_PASSWORD="admin"
NEW_URL="https://blog.hushdev.xyz"

docker exec -i $CONTAINER_NAME mariadb -u$DB_USER -p$DB_PASSWORD $DB_NAME <<EOF
UPDATE wp_options SET option_value = '$NEW_URL' WHERE option_name = 'home';
UPDATE wp_options SET option_value = '$NEW_URL' WHERE option_name = 'siteurl';
SELECT option_name, option_value FROM wp_options WHERE option_name IN ('home', 'siteurl');
EOF
