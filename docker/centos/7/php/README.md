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

docker build -t php-wechaty:v1 --no-cache .

sudo docker tag php-wechaty:v1 yiluxiangbei/php-wechaty:v1
sudo docker push yiluxiangbei/php-wechaty:v1

sudo docker tag php-wechaty:v1 registry.cn-beijing.aliyuncs.com/luomor/php-wechaty:v1
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/php-wechaty:v1

sudo docker tag php-wechaty:v1 luomor/php-wechaty:v1
sudo docker push luomor/php-wechaty:v1

sudo docker tag php-wechaty:v1 phpwechaty/php-wechaty:v1
sudo docker push phpwechaty/php-wechaty:v1

# 1. 删除本地tag
git tag -d tag-name
# 2. 删除远程tag
git push origin :refs/tags/tag-name

sudo docker tag wechaty/wechaty yiluxiangbei/wechaty
sudo docker push yiluxiangbei/wechaty

sudo docker tag wechaty/wechaty registry.cn-beijing.aliyuncs.com/luomor/wechaty
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/wechaty

git reset --hard 2ac21caea9f3dcd32bd43d94142f867b281ee6ba
git push origin HEAD --force

docker rmi $(docker images | grep "<none>" | awk "{print \$3}")
docker rmi `docker images | grep none | awk '{print $3}'`
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

```shell script
# docker pull wechaty/wechaty

export WECHATY_PUPPET="wechaty-puppet-wechat"
export WECHATY_TOKEN=$(curl -s https://www.uuidgenerator.net/api/version4)
echo "WECHATY_TOKEN=$WECHATY_TOKEN"
export WECHATY_PUPPET_SERVER_PORT="8788"
export WECHATY_LOG="verbose"
export WECHATY_PUPPET_SERVICE_NO_TLS_INSECURE_SERVER="false"

docker run -ti \
  --rm \
  --name wechaty_puppet_service_token_gateway \
  --privileged \
  --network=host \
  -e WECHATY_LOG \
  -e WECHATY_PUPPET \
  -e WECHATY_PUPPET_SERVER_PORT \
  -e WECHATY_PUPPET_SERVICE_NO_TLS_INSECURE_SERVER \
  -e WECHATY_TOKEN \
  wechaty/wechaty

sleep 10s

export WECHATY_PUPPET_SERVICE_TOKEN=$WECHATY_TOKEN
# 0ab69268-ab08-4f0d-afc6-ca402ad52e3b
export WECHATY_PUPPET_SERVICE_TOKEN=01f2ea74-2968-44e9-81e1-621cc1cfc56e
echo "WECHATY_PUPPET_SERVICE_TOKEN=$WECHATY_PUPPET_HOSTIE_TOKEN"
export WECHATY_PUPPET_SERVICE_ENDPOINT="127.0.0.1:8788"
export WECHATY_PUPPET_SERVICE_NO_TLS_INSECURE_CLIENT="false"

docker pull phpwechaty/php-wechaty:v1

docker run -ti \
  --rm \
  --name php-wechaty \
  --network=host \
  -e WECHATY_LOG \
  -e WECHATY_PUPPET_SERVICE_TOKEN \
  -e WECHATY_PUPPET_SERVICE_ENDPOINT \
  -e WECHATY_PUPPET_SERVICE_NO_TLS_INSECURE_CLIENT \
  --volume="$(pwd)":/bot \
  phpwechaty/php-wechaty:v1 \
  bash

docker run -ti \
  --rm \
  --name php-wechaty \
  --network=host \
  -e WECHATY_LOG \
  -e WECHATY_PUPPET_SERVICE_TOKEN \
  -e WECHATY_PUPPET_SERVICE_ENDPOINT \
  -e WECHATY_PUPPET_SERVICE_NO_TLS_INSECURE_CLIENT \
  --volume="$(pwd)":/bot \
  phpwechaty/php-wechaty:v1 \
  examples/ding-dong-bot.php

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '906a84df04cea2aa72f40b5f787e49f22d4c2f19492ac310e8cba5b96ac8b64115ac402c8cd292b8a03482574915d1a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

# docker stop wechaty_puppet_service_token_gateway

tree conf 
conf
├── ca.key
├── ca.pem
├── ca.srl
├── client
│   ├── client.csr
│   ├── client.key
│   └── client.pem
└── server
    ├── server.csr
    ├── server.key
    └── server.pem
```