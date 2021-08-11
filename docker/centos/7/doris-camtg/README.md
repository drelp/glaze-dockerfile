```shell script
sudo docker-compose build
sudo docker-compose down
sudo docker-compose up
sudo docker-compose up -d

sudo docker-compose up doris-fe
sudo docker-compose up -d doris-fe

sudo docker-compose up doris-be
sudo docker-compose up -d doris-be

cd /home/doris/git/glaze-dockerfile/docker/centos/7/doris-camtg

sudo docker-compose up -d prometheus
sudo docker-compose stop prometheus
sudo docker-compose rm prometheus

sudo docker-compose up -d grafana-mysql80
sudo docker-compose stop grafana-mysql80
sudo docker-compose rm grafana-mysql80

sudo docker-compose up grafana
sudo docker-compose up -d grafana
sudo docker-compose stop grafana
sudo docker-compose rm grafana

sudo docker-compose logs -f grafana

mysql -h127.0.0.1 -uroot -p

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
https://prometheus.io/download/
https://grafana.com/grafana/download
/etc/prometheus/prometheus.yml
/etc/grafana/grafana.ini

/usr/share/grafana
```