FROM debian:latest

USER root
WORKDIR /root

RUN apt update && apt install -y wget python3 python3-httpx python3-rich python3-click aria2
RUN wget -O minerva.py https://minerva-archive.org/worker/download

CMD [ "python3", "minerva.py", "run", "-c 25", "--keep-files" ]
