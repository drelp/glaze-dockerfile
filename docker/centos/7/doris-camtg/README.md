```shell script
sudo docker-compose build
sudo docker-compose down
sudo docker-compose up
sudo docker-compose up -d

mysql -h127.0.0.1 -uroot -p -P9030
ALTER SYSTEM ADD BACKEND "doris-be:9050";
SHOW PROC '/backends';
```

```shell script
sudo docker network create --subnet=172.19.0.0/16 doris-network
```