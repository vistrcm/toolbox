FROM ubuntu:18.04
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        iputils-ping \
        curl \
        ca-cacert \
        net-tools \
        dnsutils \
        netcat \
        nmap \
        htop \
        strace \
        gdb \
     && rm -rf /var/lib/apt/lists/*
