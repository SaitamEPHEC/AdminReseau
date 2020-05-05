FROM ubuntu:14.04.5

LABEL maintainer="m.gassmann@students.ephec.be"

RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -y -q install bind9 bind9utils dnsutils bind9-doc --no-install-recommends

RUN mkdir -p /etc/bind/zones

WORKDIR /etc/bind
VOLUME /etc/bind

COPY named.conf.options /etc/bind/
COPY named.conf.local /etc/bind/
COPY ./zones/db.intranet /etc/bind/zones/
COPY ./zones/178.51.in-addr.arpa /etc/bind/zones/

RUN rm -rf /etc/resolv.conf
COPY resolv.conf /etc/

EXPOSE 53/tcp 53/udp

CMD ["/usr/sbin/named", "-c", "/etc/bind/named.conf", "-fg"]
