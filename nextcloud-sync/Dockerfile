FROM debian:stable-slim

USER 0:0
RUN apt update && apt install -y ca-certificates nextcloud-desktop-cmd
RUN apt clean && rm -rf /var/lib/apt/lists/*

WORKDIR /
ADD ./sync.bash /sync.bash
RUN chmod +x /sync.bash

USER 568:568
ENTRYPOINT [ "/sync.bash" ]
