```shell script
sudo docker-compose build
sudo docker-compose down
sudo docker-compose up
sudo docker-compose up -d

sudo docker-compose up doris-fe
sudo docker-compose up -d doris-fe

sudo docker-compose up doris-be
sudo docker-compose up -d doris-be

sudo docker-compose up -d prometheus

mysql -h127.0.0.1 -uroot -p -P9030
mysql -h192.168.0.186 -uroot -p -P9030
ALTER SYSTEM ADD BACKEND "192.168.0.152:9050";
ALTER SYSTEM ADD BACKEND "192.168.0.196:9050";
ALTER SYSTEM ADD BACKEND "192.168.0.198:9050";
SHOW PROC '/backends';
```

```shell script
sudo docker network create --subnet=172.19.0.0/16 doris-network
```

```shell script
http://doris.incubator.apache.org/master/zh-CN/administrator-guide/operation/monitor-alert.html
/etc/prometheus/prometheus.yml
```