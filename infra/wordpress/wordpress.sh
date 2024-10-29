#!/bin/sh
if [ -n "$SKIP_WP_UPDATE" ]; then
  echo Dev mode: skipping Wordpress file update
else
  echo Updating Wordpress files...
  tar -xf /tmp/wp-content.tgz
fi

exec /usr/local/bin/docker-entrypoint.sh $@
chmod chown -R 82:82 wp-content
chmod -R ugo+rw /var/www/html/wp-content/uploads/
