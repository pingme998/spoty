FROM pingme998/insta:latest
RUN apt update -y
RUN apt install supervisor -y
RUN apt install unzip -y
RUN apt install curl -y
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY rclon1 /usr/bin/rclon1
COPY rclon2 /usr/bin/rclon2
COPY rclon3 /usr/bin/rclon3
COPY rclon4 /usr/bin/rclon4
COPY default /etc/nginx/sites-enabled/default
COPY rcxstart /usr/bin/rcxstart
RUN chmod +x /usr/bin/rclon1
RUN chmod +x /usr/bin/rclon2
RUN chmod +x /usr/bin/rclon3
RUN chmod +x /usr/bin/rclon4
RUN chmod +x /usr/bin/rcxstart
RUN curl https://rclone.org/install.sh | bash
COPY e.sh /e.sh
RUN chmod +x /e.sh
CMD /e.sh
