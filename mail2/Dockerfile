FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install apache2 php7 -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install apache2 php -y

RUN DEBIAN_FRONTEND=noninteractive apt-get install postfix -y

RUN DEBIAN_FRONTEND=noninteractive apt-get install dovecot-imapd dovecot-pop3d -y

RUN DEBIAN_FRONTEND=noninteractive apt-get install wget unzip -y
RUN wget https://sourceforge.net/projects/squirrelmail/files/stable/1.4.22/squirrelmail-webmail-1.4.22.zip
RUN unzip squirrelmail-webmail-1.4.22.zip
RUN mv squirrelmail-webmail-1.4.22 /var/www/html/
RUN chown -R www-data:www-data /var/www/html/squirrelmail-webmail-1.4.22/
RUN chmod 755 -R /var/www/html/squirrelmail-webmail-1.4.22/
RUN mv /var/www/html/squirrelmail-webmail-1.4.22/ /var/www/html/squirrelmail

COPY config.php /var/www/html/squirrelmail/config/config.php
COPY mailname /etc/mailname
COPY main.cf /etc/postfix/main.cf

#cree user
RUN useradd -p $(openssl passwd -1 lambert) lambert.maximilien
RUN mkdir -p /var/www/html/lambert.maximilien
RUN usermod -m -d /var/www/html/lambert.maximilien lambert.maximilien
RUN chown -R lambert.maximilien:lambert.maximilien /var/www/html/lambert.maximilien







EXPOSE 25 110 143 465 587 993 995
CMD /runservices.sh
