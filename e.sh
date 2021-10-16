#!/bin/bash
rclone config file
mkdir /root/.config
mkdir /root/.config/rclone
wget "$CONFIG_IN_URL" -O /.rclone.conf
wget "$CONFIG_IN_URL" -O /root/.config/rclone/rclone.conf
echo $PORT >/PORT
cat /default |sed 's|therandomport|$(cat /PORT)|g' > /etc/nginx/sites-enabled/default
/usr/bin/supervisord
