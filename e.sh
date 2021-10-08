#!/bin/bash

echo 'tre' >/command.txt 
echo "rclone rcd --rc-serve --rc--addr=0.0.0.0:$PORT" >>/command.txt
parallel < /command.txt
