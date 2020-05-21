FROM ubuntu:16.04

RUN apt-get update && apt-get -y install asterisk

WORKDIR /etc/asterisk

COPY ./config/extensions.conf /etc/asterisk/extensions.conf
COPY ./config/users.conf /etc/asterisk/users.conf
COPY ./config/voicemail.conf /etc/asterisk/voicemail.conf
COPY ./config/sip.conf /etc/asterisk/sip.conf
COPY ./config/queues.conf /etc/asterisk/queues.conf
COPY ./config/rtp.conf /etc/asterisk/rtp.conf

EXPOSE 5060 5060/udp
EXPOSE 16384/udp
EXPOSE 16385/udp
EXPOSE 16386/udp
EXPOSE 16387/udp
EXPOSE 16388/udp
EXPOSE 16389/udp
EXPOSE 16390/udp
EXPOSE 16391/udp
EXPOSE 16392/udp
EXPOSE 16393/udp
EXPOSE 16394/udp
EXPOSE 16395/udp
EXPOSE 16396/udp
EXPOSE 16397/udp
EXPOSE 16398/udp
EXPOSE 16399/udp

CMD ["/usr/sbin/asterisk", "-f"]
