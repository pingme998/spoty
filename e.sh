#!/bin/bash
echo "$INVITEURL"
sed -i "s|thesuperurl|$INVITEURL|g" /etc/supervisor/conf.d/supervisord.conf
cat /etc/supervisor/conf.d/supervisord.conf
echo $PORT >/PORT
/usr/bin/supervisord
