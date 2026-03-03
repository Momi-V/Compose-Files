FROM python:trixie

WORKDIR /minerva

RUN apt install -y aria2
RUN pip install httpx rich click

CMD python minerva.py run
