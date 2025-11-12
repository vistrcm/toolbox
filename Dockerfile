FROM ubuntu:24.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    iputils-ping \
    curl \
    ca-certificates \
    net-tools \
    dnsutils \
    netcat-traditional \
    nmap \
    htop \
    strace \
    gdb \
    python3-setuptools \
    python3-pip \
    gnupg2 \
    gnupg-agent \
    dirmngr \
    tmux \
    openssh-client \
    traceroute \
    tcptraceroute \
    iputils-tracepath \
    redis-tools \
    less \
    moreutils \
    tcpdump \
    wget \
    cryptsetup \
    scdaemon \
    pcscd \
    yubikey-personalization \
    yubikey-manager \
    jq \
    apt-transport-https \
    age \
    postgresql-client \
    bzip2 \
    magic-wormhole \
    iproute2 \
    socat \
    lsof \
    bpftrace \
    && echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
    && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg \
    && apt-get update -y && apt-get install google-cloud-cli -y \
    && rm -rf /var/lib/apt/lists/*
