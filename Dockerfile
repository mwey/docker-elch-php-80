FROM ubuntu:20.04

RUN apt-get update -yqq
RUN apt-get install apt-utils -y
RUN apt-get install wget -y
RUN apt-get install language-pack-en git unzip curl -yqq
RUN apt-get install debconf-utils -y
ENV TZ=Europe/Zurich
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y tzdata
RUN apt-get install -y software-properties-common
RUN ln -sf /usr/share/zoneinfo/Europe/Zurich /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
RUN LC_ALL=C.UTF-8 add-apt-repository -y  ppa:ondrej/php
RUN apt-get update -yqq
RUN apt-get install -y php8.0 php8.0-cli php8.0-mbstring php8.0-zip php8.0-mysql php8.0-opcache php8.0-curl php8.0-ldap php8.0-intl php8.0-common php8.0-gd php8.0.soap php8.0-xml php8.0-sqlite3
RUN echo 'memory_limit=1G'> /etc/php/8.0/cli/conf.d/php-memory_limit.ini
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
RUN npm install v14.16.1
RUN nvm use v16.16.1

