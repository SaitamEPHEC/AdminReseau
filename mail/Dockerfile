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
COPY auth-sql.conf.ext /etc/dovecot/conf.d/autho-sql.conf.ext
COPY dovecot-sql.conf.ext /etc/dovecot/dovecot-sql.conf.ext
COPY dovecot.conf /etc/dovecot/dovecot.conf





RUN DEBIAN_FRONTEND=noninteractive apt install postfix postfix-mysql -y
RUN mv /etc/postfix/main.cf /etc/postfix/main.cf.bak

COPY config.inc.php /var/www/postfixadmin/config.inc.php
COPY postfixadmin.conf /etc/nginx/sites-enabled/postfixadmin.conf
COPY main.cf /etc/postfix/main.cf
COPY master.cf /etc/postfix/master.cf
COPY mysql-virtual-mailbox-domains.cf /etc/postfix/mysql-virtual-mailbox-domains.cf
COPY mysql-virtual-mailbox-maps.cf /etc/postfix/mysql-virtual-mailbox-maps.cf
COPY mysql-virtual-alias-maps.cf /etc/postfix/mysql-virtual-alias-maps.cf
COPY mysql-sender-login-maps.cf /etc/postfix/mysql-sender-login-maps.cf

COPY mailserver.crt /opt/mailserver.crt
COPY mailserver.key /opt/mailserver.key




RUN chmod +x /opt/runservices.sh

EXPOSE 25 110 143 587 993 995
CMD /opt/runservices.sh
