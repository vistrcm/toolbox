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
        python3-pip \
     && echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
     && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - \
     && apt-get update -y && apt-get install google-cloud-sdk -y \
     && rm -rf /var/lib/apt/lists/* \
     && python3 -m pip --no-cache-dir install google-api-python-client
