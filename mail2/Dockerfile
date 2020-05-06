FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install apache2 -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install php -y

RUN apt-get install postfix -y

RUN DEBIAN_FRONTEND=noninteractive apt-get install dovecot-imapd dovecot-pop3d -y

RUN apt-get install wget zip unzip -y
RUN wget https://sourceforge.net/projects/squirrelmail/files/stable/1.4.22/squirrelmail-webmail-1.4.22.zip
RUN unzip squirrelmail-webmail-1.4.22.zip
RUN sudo mv squirrelmail-webmail-1.4.22 /var/www/html/
RUN sudo chown -R www-data:www-data /var/www/html/squirrelmail-webmail-1.4.22/
RUN sudo chmod 755 -R /var/www/html/squirrelmail-webmail-1.4.22/
RUN sudo mv /var/www/html/squirrelmail-webmail-1.4.22/ /var/www/html/squirrelmail

COPY config.php /var/www/html/squirrelmail/config/config.php








EXPOSE 25 110 143 465 587 993 995
CMD /runservices.sh
