FROM ubuntu:26.04

RUN apt update && apt full-upgrade -y
RUN apt install -y rocm
RUN apt install -y rocm-opencl-icd
RUN apt install -y btop wget

WORKDIR /home/ubuntu/FAH
RUN wget https://download.foldingathome.org/releases/public/fah-client/debian-10-64bit/release/fah-client_8.5.6_amd64.deb
RUN apt install -y ./fah-client_*.deb; exit 0

USER ubuntu
ENTRYPOINT fah-client
