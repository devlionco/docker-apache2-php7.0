FROM ubuntu:16.04
MAINTAINER Kiril <kiril@devlion.co>
# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
apt-get install -y apache2 && \
apt-get install -y curl  && \
apt-get install -y aspell  && \
apt-get install -y ghostscript && \
apt-get install -y graphviz && \
apt-get install -y clamav && \
apt-get install -y git && \
apt-get install -y php7.0 libapache2-mod-php7.0 php7.0-cli php7.0-common && \
apt-get install -y php7.0-mbstring php7.0-gd php7.0-intl php7.0-xml php7.0-mysql && \
apt-get install -y php7.0-mcrypt php7.0-zip php7.0-curl php7.0-gd php7.0-soap && \
apt-get install -y php7.0-ldap php7.0 php7.0-xmlrpc php7.0-xsl php7.0-pspell && \
rm -rf /var/lib/apt/lists/* && \
cd /tmp && curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

