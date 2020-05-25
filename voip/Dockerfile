FROM debian:jessie
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y \
        build-essential \
        openssl \
        libxml2-dev \
        libncurses5-dev \
        uuid-dev \
        sqlite3 \
        libsqlite3-dev \
        pkg-config \
        libjansson-dev \
        libssl-dev \
        curl \
        msmtp \
		nano

# Asterisk expects /usr/sbin/sendmail
RUN ln -s /usr/bin/msmtp /usr/sbin/sendmail

ENV SRTP_VERSION 1.4.4
RUN cd /tmp \
    && curl -o srtp.tgz http://kent.dl.sourceforge.net/project/srtp/srtp/${SRTP_VERSION}/srtp-${SRTP_VERSION}.tgz \
    && tar xzf srtp.tgz
RUN cd /tmp/srtp* \
    && ./configure CFLAGS=-fPIC \
    && make \
    && make install


ENV ASTERISK_VERSION 14.5.0
RUN cd /tmp && curl -o asterisk.tar.gz http://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-${ASTERISK_VERSION}.tar.gz \
    && tar xzf asterisk.tar.gz
RUN cd /tmp/asterisk* \
    && ./configure --with-pjproject-bundled --with-crypto --with-ssl \
    && make \
    && make install \
    && make samples \
    && make config
	
COPY ./config/extensions.conf /etc/asterisk/extensions.conf
COPY ./config/users.conf /etc/asterisk/users.conf
COPY ./config/voicemail.conf /etc/asterisk/voicemail.conf
COPY ./config/sip.conf /etc/asterisk/sip.conf
COPY ./config/iax.conf /etc/asterisk/iax.conf
COPY ./config/features.conf /etc/asterisk/features.conf
COPY ./config/res_parking.conf /etc/asterisk/res_parking.conf

CMD asterisk -fvvv
