FROM pingme998/insta:latest
RUN apt update -y
RUN apt install supervisor -y
RUN apt install unzip -y
RUN apt install curl -y
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN curl https://rclone.org/install.sh | bash
COPY e.sh /e.sh
RUN chmod +x /e.sh
CMD /e.sh
