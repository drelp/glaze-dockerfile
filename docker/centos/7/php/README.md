```shell script
docker run -it --name centos-php centos:centos7
yum install vim
yum install epel-release
yum -y install https://mirrors.aliyun.com/remi/enterprise/remi-release-7.rpm
yum -y install yum-utils
yum install php74
yum-config-manager --enable remi-php74
yum install php74-php-pecl-grpc -y
yum install php74-php-pecl-protobuf -y
yum install php74-php-pecl-yac -y
yum install php74-php-xml -y
yum install php74-php -y
ln -s /usr/bin/php74 /usr/bin/php

docker commit -a "Peter Zhang" -m "centos php 7" bb412f93c31e centos-php:php74

sudo docker build -t centos-php:php74 -f ./Dockerfile .

sudo docker tag centos-php:php74 yiluxiangbei/centos-php:php74
sudo docker push yiluxiangbei/centos-php:php74

sudo docker tag centos-php:php74 registry.cn-beijing.aliyuncs.com/luomor/centos-php:php74
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/centos-php:php74

git reset --hard 2ac21caea9f3dcd32bd43d94142f867b281ee6ba
git push origin HEAD --force
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

```
rpm -qa|grep php
php74-runtime-1.0-3.el7.remi.x86_64
php74-php-common-7.4.26-1.el7.remi.x86_64
php74-1.0-3.el7.remi.x86_64
php74-php-pecl-protobuf-3.19.1-1.el7.remi.x86_64
php74-php-pecl-msgpack-2.1.2-1.el7.remi.x86_64
php74-php-json-7.4.26-1.el7.remi.x86_64
php74-php-cli-7.4.26-1.el7.remi.x86_64
php74-php-pecl-grpc-1.42.0-1.el7.remi.x86_64
php74-php-pecl-igbinary-3.2.6-1.el7.remi.x86_64
php74-php-pecl-yac-2.3.0-1.el7.remi.x86_64
php74-php-xml-7.4.26-1.el7.remi.x86_64
```