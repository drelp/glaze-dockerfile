```shell script
sudo docker-compose build
sudo docker-compose down
sudo docker-compose up
sudo docker-compose up -d

sudo docker-compose build doris-fe
sudo docker-compose build doris-fe-follower
sudo docker-compose build doris-be

sudo docker-compose up doris-fe
sudo docker-compose up -d doris-fe
sudo docker-compose stop doris-fe
sudo docker-compose rm doris-fe

sudo docker-compose up doris-fe-follower
sudo docker-compose up -d doris-fe-follower
sudo docker-compose stop doris-fe-follower
sudo docker-compose rm -f doris-fe-follower

sudo docker-compose up doris-be
sudo docker-compose up -d doris-be
sudo docker-compose stop doris-be
sudo docker-compose rm doris-be

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

tail -f data/fe/log/fe.*
tail -f data/be/log/be.*

docker exec -it 1055d4412078 bash
mysql -h127.0.0.1 -uroot -p
mysql -h192.168.0.186 -ugrafana -p
mysql -h192.168.0.174 -ugrafana -p

mysql -h127.0.0.1 -uroot -p -P9030
mysql -h192.168.0.186 -uroot -p -P9030
camtg
ALTER SYSTEM ADD BACKEND "192.168.0.152:9050";
ALTER SYSTEM ADD BACKEND "192.168.0.196:9050";
ALTER SYSTEM ADD BACKEND "192.168.0.198:9050";
ALTER SYSTEM ADD BACKEND "192.168.0.185:9050";
SHOW PROC '/backends';
SHOW PROC '/backends'\G
ALTER SYSTEM ADD OBSERVER "192.168.0.174:9010";
SHOW PROC '/frontends';
SHOW PROC '/frontends'\G
SET PASSWORD FOR 'root' = PASSWORD('camtg');
CREATE DATABASE example_db;
CREATE USER 'test' IDENTIFIED BY 'test';
SHOW DATABASES;
GRANT ALL ON example_db TO test;
HELP CREATE TABLE;
USE example_db;
CREATE TABLE table1
(
    siteid INT DEFAULT '10',
    citycode SMALLINT,
    username VARCHAR(32) DEFAULT '',
    pv BIGINT SUM DEFAULT '0'
)
AGGREGATE KEY(siteid, citycode, username)
DISTRIBUTED BY HASH(siteid) BUCKETS 10
PROPERTIES("replication_num" = "1");
SHOW TABLES;
DESC table1;
```

```shell script
sudo docker network create --subnet=172.19.0.0/16 doris-network
```

```shell script
http://doris.incubator.apache.org/master/zh-CN/administrator-guide/operation/monitor-alert.html
https://prometheus.io/download/
https://grafana.com/grafana/download
http://doris.incubator.apache.org/master/zh-CN/installing/install-deploy.html#%E9%9B%86%E7%BE%A4%E9%83%A8%E7%BD%B2
/etc/prometheus/prometheus.yml
/etc/grafana/grafana.ini

/usr/share/grafana

create database grafana DEFAULT CHARACTER SET utf8mb4;
create user 'grafana'@'127.0.0.1' identified by 'grafana';
grant all privileges on grafana.* to 'grafana'@'127.0.0.1';
create user 'grafana'@'%' identified by 'grafana';
grant all privileges on grafana.* to 'grafana'@'%';
flush privileges;

CREATE TABLE `session` (
    `key`       CHAR(16) NOT NULL,
    `data`      BLOB,
    `expiry`    INT(11) UNSIGNED NOT NULL,
    PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

insert into table1(siteid,citycode,username,pv) values (1,'1','1',1);
select * from table1;

chown -R root:root /etc/grafana && \
chmod -R a+r /etc/grafana && \
chown -R grafana:grafana /var/lib/grafana && \
chown -R grafana:grafana /usr/share/grafana

rm -rf data/
git reset --hard

https://cloud.baidu.com/doc/DORIS/s/pkmealpi3

{"receivedBytes":0,"errorRows":0,"committedTaskNum":0,"loadedRows":0,"loadRowsRate":0,"abortedTaskNum":138,"totalRows":0,"unselectedRows":0,"receivedBytesRate":0,"taskExecuteTimeMs":1}
```