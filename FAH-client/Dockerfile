FROM ubuntu:24.04

RUN apt update && apt full-upgrade -y
RUN apt install -y btop wget

RUN wget https://repo.radeon.com/amdgpu-install/6.4.4/ubuntu/noble/amdgpu-install_6.4.60404-1_all.deb
RUN apt install -y ./amdgpu-install_6.4.60404-1_all.deb
RUN amdgpu-install -y --usecase=rocm --no-dkms

WORKDIR /home/ubuntu/FAH
RUN wget https://download.foldingathome.org/releases/public/fah-client/debian-10-64bit/release/fah-client_8.5.6_amd64.deb
RUN apt install -y ./fah-client_*.deb; exit 0

USER ubuntu
ENTRYPOINT [ "fah-client" ]
