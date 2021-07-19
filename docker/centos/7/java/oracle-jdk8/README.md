docker pull centos:7

docker images

docker run -it \
--name centos7 \
--privileged=true \
-v /mydocker/centos:/usr/local/src \
-d \
--restart=always \
centos:7

docker ps

https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html

mkdir -p /home/dev/jdk8

sudo docker build -t='yiluxiangbei/centos7-jdk8' .
mv jdk-8u291-linux-x64.tar.gz docker/centos/7/java/oracle-jdk8/
sudo docker build -t='yiluxiangbei/centos7-jdk8' docker/centos/7/java/oracle-jdk8

sudo docker run -it \
--name jdk8 \
-d \
--restart=always \
yiluxiangbei/centos7-jdk8

sudo docker exec -it jdk8 /bin/bash