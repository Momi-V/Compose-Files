FROM python:trixie

USER root
WORKDIR /root

RUN apt update && apt install -y aria2
RUN pip install minerva-worker

CMD [ "minerva", "run", "-c 25", "--keep-files" ]
