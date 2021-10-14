FROM developeranaz/gecko-firefox-python:1
RUN apt install git -y
COPY rcxstart /usr/bin/rcxstart
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY e.sh /e.sh
COPY startex /usr/bin/startex
COPY start.py /start.py
RUN chmod +x /usr/bin/startex
RUN chmod +x /e.sh
RUN chmod +x /usr/bin/rcxstart
CMD /e.sh
