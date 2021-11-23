```shell script
docker run -it --name centos-php centos:centos7
yum install vim
yum install epel-release
yum -y install https://mirrors.aliyun.com/remi/enterprise/remi-release-7.rpm
yum -y install yum-utils
yum install php74
yum install php74-pecl-grpc
yum install php74-pecl-protobuf
yum install php74-pecl-yac
yum install php74-xml
```

```shell script
rpm -qa|grep php
php74-php-common-7.4.24-1.el7.remi.x86_64
php74-php-pecl-protobuf-3.18.0-1.el7.remi.x86_64
php74-php-pecl-yac-2.3.0-1.el7.remi.x86_64
php74-php-json-7.4.24-1.el7.remi.x86_64
php74-php-cli-7.4.24-1.el7.remi.x86_64
php74-php-pecl-grpc-1.41.0-1.el7.remi.x86_64
php74-php-pecl-msgpack-2.1.2-1.el7.remi.x86_64
php74-php-xml-7.4.24-1.el7.remi.x86_64
php74-runtime-1.0-3.el7.remi.x86_64
php74-1.0-3.el7.remi.x86_64
php74-php-pecl-igbinary-3.2.6-1.el7.remi.x86_64
```