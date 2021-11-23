FROM centos:centos7

RUN yum -y install vim
RUN yum -y install epel-release
RUN yum -y install https://mirrors.aliyun.com/remi/enterprise/remi-release-7.rpm
RUN yum -y install yum-utils
RUN yum -y install php74
RUN yum-config-manager --enable remi-php74
RUN yum install php74-php-pecl-grpc -y
RUN yum install php74-php-pecl-protobuf -y
RUN yum install php74-php-pecl-yac -y
RUN yum install php74-php-xml -y
RUN yum install php74-php -y
RUN yum install -y unzip
RUN yum install -y figlet
RUN yum install -y sudo
RUN ln -s /usr/bin/php74 /usr/bin/php

RUN mkdir /home/php
WORKDIR /home/php

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === '906a84df04cea2aa72f40b5f787e49f22d4c2f19492ac310e8cba5b96ac8b64115ac402c8cd292b8a03482574915d1a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer