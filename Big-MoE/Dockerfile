FROM ghcr.io/ggml-org/llama.cpp:server-vulkan

RUN apt update && apt full-upgrade -y
RUN apt install -y curl git screen

WORKDIR /root

RUN curl -fsSL https://github.com/Helldez/BigMoeOnEdge/releases/latest/download/install.sh | sh

COPY start.sh start.sh
RUN chmod +x start.sh