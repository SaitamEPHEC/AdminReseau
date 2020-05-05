FROM ubuntu:14.04.5

LABEL maintainer="m.gassmann@students.ephec.be"

RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -y -q install bind9 bind9utils dnsutils bind9-doc --no-install-recommends && \
	cat /etc/bind/named.conf.options

RUN mkdir -p /etc/bind/zones && \
	mkdir -p /var/log/bind/ &&\
	touch /etc/bind/log.conf &&\
	touch /var/log/bind/security.log &&\
	touch /var/log/bind/requests.log  &&\
	touch /var/log/bind/bind.log &&\
	chown -R bind /var/log/bind &&\
	chmod u+rw /var/log/bind 

WORKDIR /etc/bind
VOLUME /etc/bind

COPY named.conf.options /etc/bind/
COPY named.conf.local /etc/bind/
COPY log.conf /etc/bind/
COPY ./zones/db.wt1-8.ephec-ti.be /etc/bind/zones/
COPY ./zones/178.51.in-addr.arpa /etc/bind/zones/

COPY named.conf	/etc/bind/
COPY named.conf.default-zones /etc/bind/

EXPOSE 53/tcp 53/udp

CMD ["/usr/sbin/named", "-c", "/etc/bind/named.conf", "-fg"]
