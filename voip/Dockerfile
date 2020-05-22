FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y build-essential git-core pkg-config subversion libjansson-dev sqlite autoconf \
      automake libtool libxml2-dev libncurses5-dev unixodbc unixodbc-dev libasound2-dev libogg-dev \
      libvorbis-dev libneon27-dev libspandsp-dev uuid uuid-dev sqlite3 libsqlite3-dev \
      libgnutls-dev wget && \

    wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-13-current.tar.gz && \
    tar -xzf asterisk-13-current.tar.gz && \
    rm asterisk-13-current.tar.gz && \
    cd asterisk-* && \
    ./configure && \
    contrib/scripts/get_mp3_source.sh && \
    make menuselect.makeopts && \
    menuselect/menuselect \

WORKDIR /etc/asterisk

COPY ./config/extensions.conf /etc/asterisk/extensions.conf
COPY ./config/users.conf /etc/asterisk/users.conf
COPY ./config/voicemail.conf /etc/asterisk/voicemail.conf
COPY ./config/sip.conf /etc/asterisk/sip.conf
COPY ./config/queues.conf /etc/asterisk/queues.conf
COPY ./config/rtp.conf /etc/asterisk/rtp.conf
COPY ./config/modules.conf /etc/asterisk/modules.conf

RUN service asterisk restart

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
