# docker-neo4j

```shell script
sudo docker-compose build
sudo docker-compose down
sudo docker-compose up
sudo docker-compose up -d

http://10.2.100.2:7474/browser/

docker-compose logs -f --tail 100 neo4j
```

```shell script
sudo docker network create --subnet=172.19.0.0/16 neo4j-network
```

```
spring:
  data:
    neo4j:
      username: neo4j
      password: 123456
      uri: bolt://10.141.211.163:7687

<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-data-neo4j</artifactId>
</dependency>
```