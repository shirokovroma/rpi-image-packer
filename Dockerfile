FROM mkaczanowski/packer-builder-arm:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    debootstrap \
    schroot \
    openssh-client \
    python3 \
    python3-pip \
 && rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install \
    ansible-core==2.16.3

# RUN ansible-galaxy role install artis3n.tailscale

COPY ./entrypoint.sh /entrypoint.sh

