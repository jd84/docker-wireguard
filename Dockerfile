FROM ubuntu:20.04

LABEL org.opencontainers.image.source https://github.com/jd84/docker-wireguard

ENV LANG en_US.utf8
ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update && apt-get install -y locales wireguard iproute2 iptables openresolv curl && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

COPY entrypoint.sh /entrypoint.sh
COPY run.sh /run.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/bin/sh", "-ec", "while :; do sleep 5 ; done"]