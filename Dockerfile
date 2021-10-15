FROM pingme998/insta:latest
RUN apt update -y
RUN apt install supervisor -y
RUN apt install unzip -y
RUN apt install curl -y
RUN curl https://rclone.org/install.sh | bash
COPY e.sh /e.sh
RUN chmod +x /e.sh
CMD /e.sh
