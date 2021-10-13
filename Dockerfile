FROM developeranaz/gecko-firefox-python:1
COPY rcxstart /usr/bin/rcxstart
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY e.sh /e.sh
RUN chmod +x /e.sh
RUN chmod +x /usr/bin/rcxstart
CMD /e.sh
