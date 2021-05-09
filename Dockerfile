FROM nginx:1.19.6
RUN cd /
RUN curl -O 'https://rawcdn.githack.com/devsdocs/binary/825682d6acbe5f7da150018981ca66b6d9fb0184/rclone'
RUN curl -O 'https://rawcdn.githack.com/devsdocs/binary/825682d6acbe5f7da150018981ca66b6d9fb0184/rclone.1' && \
    cp rclone /usr/bin/ && \
    chown root:root /usr/bin/rclone && \
    chmod 755 /usr/bin/rclone
COPY entrypoint.sh /entrypoint.sh 
COPY acc.json /acc.json
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
