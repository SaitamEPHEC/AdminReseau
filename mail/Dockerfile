FROM ubuntu:latest

RUN apt update -y && apt upgrade -y




RUN DEBIAN_FRONTEND=noninteractive apt-get install dovecot-core dovecot-imapd dovecot-lmtpd dovecot-mysql dovecot-pop3d -y

RUN mkdir -p /var/mail/vhosts/wt1-8.ephec-ti.be
RUN groupadd -g 5000 vmail 
RUN useradd -g vmail -u 5000 vmail -d /var/mail
RUN chown -R vmail:vmail /var/mail
RUN chown -R vmail:dovecot /etc/dovecot
RUN chmod -R o-rwx /etc/dovecot 







RUN DEBIAN_FRONTEND=noninteractive apt install postfix postfix-mysql -y

COPY config.inc.php /var/www/postfixadmin/config.inc.php
COPY postfixadmin.com /etc/nginx/sites-enabled/postfixadmin.conf
COPY main.cf /etc/postfix/main.cf
COPY mysql-virtual-mailbox-domains.cf /etc/postfix/mysql-virtual-mailbox-domains.cf
COPY mysql-virtual-mailbox-maps.cf /etc/postfix/mysql-virtual-mailbox-maps.cf
COPY mysql-virtual-alias-maps.cf /etc/postfix/mysql-virtual-alias-maps.cf
COPY mysql-sender-login-maps.cf /etc/postfix/mysql-sender-login-maps.cf







EXPOSE 110 143 587 993 995
CMD 
