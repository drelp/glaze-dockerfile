# docker-neo4j

```shell script
sudo docker-compose build
sudo docker-compose down
sudo docker-compose up
sudo docker-compose up -d

http://10.2.100.2:7474/browser/
neo4j
123456

docker-compose logs -f --tail 100 neo4j

python3 build_medicalgraph.py
python3 chat_graph.py

sudo pip3 install py2neo
sudo pip3 uninstall py2neo
# py2neo (2021.2.3)
pip3 install py2neo==
sudo pip3 install py2neo=py2neo-4.3.0
```

```python
Graph("bolt://localhost:7687", auth=("neo4j", "password"))
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