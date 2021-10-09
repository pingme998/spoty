FROM developeranaz/treasure-cloud-invite:latest
RUN apt install rclone -y
RUN apt install supervisor -y
COPY e.sh /e.sh
RUN chmod +x /e.sh
CMD /e.sh
