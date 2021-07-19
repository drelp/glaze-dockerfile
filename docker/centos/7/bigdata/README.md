sudo docker build -t='yiluxiangbei/centos7-bigdata-python2' -f docker/centos/7/bigdata/Dockerfile-python2 docker/centos/7/bigdata

sudo docker run -it \
--name bigdata-python2 \
-d \
--restart=always \
yiluxiangbei/centos7-bigdata-python2

sudo docker exec -it bigdata-python2 /bin/bash

sudo docker push yiluxiangbei/centos7-bigdata-python2:latest