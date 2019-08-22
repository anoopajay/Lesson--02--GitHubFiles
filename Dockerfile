#Base Ubuntu
FROM ubuntu:latest

#Updating system Packages
RUN apt-get update && apt-get upgrade && apt-get clean

#Installing php7.2
RUN apt-get install php && apt-get install php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php

#Installing Python
RUN apt-get update -y && apt-get install --no-install-recommends -y -q build-essential python2.7 python2.7-dev python-pip

# Install PIP
RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" &&\
	python2.7 get-pip.py;
