FROM ubuntu:24.04

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        git \
        less \
        make \
        nasm \
        qemu-system-x86 \
        vim \
        xxd \
        zsh \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    chsh -s /usr/bin/zsh ubuntu

USER ubuntu
RUN curl --proto '=https' -fLsS https://rossmacarthur.github.io/install/crate.sh | bash -s -- --repo rossmacarthur/sheldon --to ~/.local/bin && \
    curl -sS https://starship.rs/install.sh | sh -s -- --yes -b ~/.local/bin

CMD ["/usr/bin/zsh"]
