FROM ghcr.io/ggml-org/llama.cpp:server-rocm

RUN apt update && apt full-upgrade -y
RUN apt install -y curl git

WORKDIR /root

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.41.0/install.sh | bash; \

. "$HOME/.nvm/nvm.sh"; \
nvm install 26

RUN apt install -y cmake

RUN git clone --recursive https://github.com/Helldez/BigMoeOnEdge.git; \
. "$HOME/.nvm/nvm.sh"; \
cd BigMoeOnEdge && cd ui && npm ci && npm run build && cd ..; \
scripts/build-host.sh -DGGML_HIP=ON
