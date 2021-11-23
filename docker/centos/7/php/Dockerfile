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
RUN ln -s /usr/bin/php74 /usr/bin/php
