FROM ubuntu:latest

RUN apt update -y && apt upgrade -y




RUN DEBIAN_FRONTEND=noninteractive apt-get install dovecot-core dovecot-imapd dovecot-lmtpd dovecot-mysql dovecot-pop3d -y

RUN mkdir -p /var/mail/vhosts/wt1-8.ephec-ti.be
RUN groupadd -g 5000 vmail 
RUN useradd -g vmail -u 5000 vmail -d /var/mail
RUN chown -R vmail:vmail /var/mail
RUN chown -R vmail:dovecot /etc/dovecot
RUN chmod -R o-rwx /etc/dovecot 

COPY 10-auth.conf /etc/dovecot/conf.d/10-auth.conf
COPY 10-mail.conf /etc/dovecot/conf.d/10-mail.conf
COPY 10-master.conf /etc/dovecot/conf.d/10-master.conf
COPY 10-ssl.conf /etc/dovecot/conf.d/10-ssl.conf
# COPY auth-sql.conf.ext /etc/dovecot/conf.d/autho-sql.conf.ext
COPY dovecot-sql.conf.ext /etc/dovecot/dovecot-sql.conf.ext
COPY dovecot.conf /etc/dovecot/dovecot.conf
COPY auth-passwdfile.conf.ext /etc/dovecot/conf.d/auth-passwdfile.conf.ext
COPY dovecot-users /etc/dovecot/dovecot-users





RUN DEBIAN_FRONTEND=noninteractive apt install postfix postfix-mysql -y
RUN mv /etc/postfix/main.cf /etc/postfix/main.cf.bak
RUN DEBIAN_FRONTEND=noninteractive apt-get install wget

RUN cd /var/www
RUN wget http://downloads.sourceforge.net/project/postfixadmin/postfixadmin/postfixadmin-2.92/postfixadmin-2.92.tar.gz
RUN tar -xzf postfixadmin-2.92.tar.gz
RUN mv postfixadmin-2.92 postfixadmin
RUN rm -rf postfixadmin-2.92.tar.gz
RUN chown -R www-data:www-data postfixadmin

RUN DEBIAN_FRONTEND=noninteractive apt-get install php5-imap

COPY config.inc.php /var/www/postfixadmin/config.inc.php
COPY postfixadmin.conf /etc/nginx/sites-enabled/postfixadmin.conf
COPY main.cf /etc/postfix/main.cf
COPY master.cf /etc/postfix/master.cf
# COPY mysql-virtual-mailbox-domains.cf /etc/postfix/mysql-virtual-mailbox-domains.cf
# COPY mysql-virtual-mailbox-maps.cf /etc/postfix/mysql-virtual-mailbox-maps.cf
# COPY mysql-virtual-alias-maps.cf /etc/postfix/mysql-virtual-alias-maps.cf
# COPY mysql-sender-login-maps.cf /etc/postfix/mysql-sender-login-maps.cf
COPY virtual_mailbox_domains /etc/postfix/virtual_mailbox_domains
COPY virtual_alias_maps /etc/postfix/virtual_alias_maps

COPY mailserver.crt /opt/mailserver.crt
COPY mailserver.key /opt/mailserver.key
COPY runservices.sh /opt/runservices.sh



RUN chmod +x /opt/runservices.sh

EXPOSE 25 110 143 587 993 995
CMD /opt/runservices.sh
