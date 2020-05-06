FROM ubuntu:14.04.5

LABEL maintainer="m.gassmann@students.ephec.be"

RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -y -q install bind9 bind9utils dnsutils bind9-doc --no-install-recommends

WORKDIR /etc/bind
VOLUME /etc/bind

COPY named.conf.options /etc/bind/
COPY named.conf.local /etc/bind/

EXPOSE 53/tcp 53/udp

CMD ["/usr/sbin/named", "-c", "/etc/bind/named.conf", "-fg"]
