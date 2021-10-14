FROM ubuntu
#RUN apt install rclone -y
RUN apt install supervisor -y
RUN apt install python3 pip jupyter -y
RUN pip install instaloader
COPY rcxstart /usr/bin/rcxstart
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
EXPOSE 22 80
COPY e.sh /e.sh
RUN chmod +x /e.sh
CMD /e.sh
