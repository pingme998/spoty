#!/bin/bash
echo "$LIVEURL" >/theliveurl
#cat /etc/supervisor/conf.d/supervisord.conf
echo $PORT >/PORT
/usr/bin/supervisord
