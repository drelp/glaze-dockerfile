```shell script
sudo docker build -t='yiluxiangbei/centos7-bigdata-python2' -f docker/centos/7/bigdata/Dockerfile-python2 docker/centos/7/bigdata

sudo docker run -it \
--name bigdata-python2 \
-d \
--restart=always \
yiluxiangbei/centos7-bigdata-python2

sudo docker exec -it bigdata-python2 /bin/bash

sudo docker push yiluxiangbei/centos7-bigdata-python2:latest
```

```shell script
sudo docker build -t='yiluxiangbei/centos7-bigdata-datax' -f docker/centos/7/bigdata/Dockerfile-datax docker/centos/7/bigdata

sudo docker run -it \
--name bigdata-datax \
-d \
--restart=always \
yiluxiangbei/centos7-bigdata-datax

sudo docker exec -it bigdata-datax /bin/bash

sudo docker push yiluxiangbei/centos7-bigdata-datax:latest


sudo docker tag docker_datax-web-admin:latest yiluxiangbei/centos7-bigdata-dataxweb-admin:latest
sudo docker tag docker_datax-web-executor:latest yiluxiangbei/centos7-bigdata-dataxweb-executor:latest

sudo docker push yiluxiangbei/centos7-bigdata-dataxweb-admin:latest
sudo docker push yiluxiangbei/centos7-bigdata-dataxweb-executor:latest
```