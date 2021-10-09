FROM developeranaz/treasure-cloud-invite:latest
RUN apt install rclone -y
RUN apt install supervisor -y
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
EXPOSE 22 80
COPY e.sh /e.sh
RUN chmod +x /e.sh
CMD /e.sh
