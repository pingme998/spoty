#!/bin/bash
rclone config file
mkdir /root/.config
mkdir /root/.config/rclone
wget "$CONFIG_IN_URL" -O /.rclone.conf
wget "$CONFIG_IN_URL" -O /root/.config/rclone/rclone.conf
echo $PORT >/PORT
chmod +x /etc/nginx/sites-enabled/default
/usr/bin/supervisord
