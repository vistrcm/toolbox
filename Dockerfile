FROM ubuntu:18.04
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        iputils-ping \
        curl \
        ca-cacert \
        dig \
        htop \
     && rm -rf /var/lib/apt/lists/*
