sudo docker build -t='yiluxiangbei/centos7-openjdk8' .
sudo docker build -t='yiluxiangbei/centos7-openjdk8' docker/centos/7/java/openjdk8

sudo docker run -it \
--name openjdk8 \
-d \
--restart=always \
yiluxiangbei/centos7-openjdk8

sudo docker exec -it openjdk8 /bin/bash

sudo docker push yiluxiangbei/centos7-openjdk8:latest