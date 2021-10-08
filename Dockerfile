FROM pingme998/gecko-on-treasure:latest
RUN apt install rclone -y
RUN apt install parallel -y
COPY e.sh /e.sh
chmod +x /e.sh
CMD /e.sh
