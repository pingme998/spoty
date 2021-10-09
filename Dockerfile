FROM developeranaz/treasure-cloud-invite:latest
RUN apt install rclone -y
RUN apt install supervisor -y
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
EXPOSE 22 80
CMD ["/usr/bin/supervisord"]
