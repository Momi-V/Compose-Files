FROM python:trixie

WORKDIR /minerva

RUN pip install httpx rich click
RUN wget https://minerva-archive.org/worker/download

CMD python minerva.py login && python minerva.py run
