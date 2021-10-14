FROM pingme998/insta:latest
RUN apt update -y
COPY e.sh /e.sh
RUN chmod +x /e.sh
CMD /e.sh
