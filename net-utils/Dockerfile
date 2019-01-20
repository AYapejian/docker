FROM debian:stretch
LABEL maintainer="Ara Yapejian <ayapejian@gmail.com>"

RUN apt-get update \
    && apt-get install -y   \
        avahi-daemon        \
        avahi-discover      \
        avahi-utils         \
        curl                \
        dnsutils            \
        dnsutils            \
        iputils-ping        \
        jq                  \
        libnss-mdns         \
        net-tools           \
        netcat-openbsd      \
        nmap                \
        procps              \
        traceroute          \
        vim                 \
        wget                \
    && rm -rf /var/lib/apt/lists/*

COPY root-fs /
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]


