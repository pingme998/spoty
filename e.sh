#!/bin/bash
echo "$INVITEURL"
sed -i "s|thesuperurl|$INVITEURL|g" /etc/supervisor/conf.d/supervisord.conf

/usr/bin/supervisord
