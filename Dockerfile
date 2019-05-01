FROM ubuntu:18.04
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        iputils-ping \
        curl \
        ca-cacert \
        dnsutils \
        htop \
        strace \
     && rm -rf /var/lib/apt/lists/*
