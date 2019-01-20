FROM debian:stretch
LABEL maintainer="Ara Yapejian <ayapejian@gmail.com>"

RUN apt-get update \
    && apt-get install -y   \
        curl                \
        dnsutils            \
        jq                  \
        net-tools           \
        netcat-openbsd      \
        nmap                \
        traceroute          \
        wget                \
        vim                 \
    && rm -rf /var/lib/apt/lists/*

CMD ["bash"]
