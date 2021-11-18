```
grafana + promethieus
```

```shell script
sudo docker-compose build
sudo docker-compose down
sudo docker-compose up
sudo docker-compose up -d

sudo docker network create --subnet=172.19.0.0/16 grafana-network
```