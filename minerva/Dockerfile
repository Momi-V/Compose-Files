FROM python:trixie

WORKDIR /root

RUN apt update && apt install -y aria2
RUN pip install httpx rich click
RUN wget -O minerva.py https://minerva-archive.org/worker/download

CMD [ "python", "minerva.py", "run", "-c 5", "--keep-files" ]
