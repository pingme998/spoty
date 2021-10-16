FROM pingme998/multirc
RUN apt update -y
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY rclon1 /usr/bin/rclon1
COPY rclon2 /usr/bin/rclon2
COPY rclon3 /usr/bin/rclon3
COPY rclon4 /usr/bin/rclon4
COPY default /default
COPY rcxstart /usr/bin/rcxstart
RUN chmod +x /usr/bin/rclon1
RUN chmod +x /usr/bin/rclon2
RUN chmod +x /usr/bin/rclon3
RUN chmod +x /usr/bin/rclon4
RUN chmod +x /usr/bin/rcxstart
COPY e.sh /e.sh
RUN chmod +x /e.sh
CMD /e.sh
