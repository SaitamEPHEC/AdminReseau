FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install apache2 -y
RUN apt-get install php7 -y

RUN apt-get install postfix -y

RUN DEBIAN_FRONTEND=noninteractive apt-get install dovecot-imapd dovecot-pop3d -y










EXPOSE 25 110 143 465 587 993 995
CMD /runservices.sh
