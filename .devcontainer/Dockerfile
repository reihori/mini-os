FROM ubuntu:24.04

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends make nasm qemu-system-x86 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ARG USERNAME=devuser
ARG WORKSPACE=/workspace

RUN useradd -ms /bin/bash $USERNAME && \
    mkdir -p $WORKSPACE && \
    chown -R $USERNAME:$USERNAME $WORKSPACE

USER $USERNAME
WORKDIR $WORKSPACE

CMD ["/bin/bash"]
