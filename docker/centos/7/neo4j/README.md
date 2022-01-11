# docker-neo4j

```shell script
sudo docker-compose build
sudo docker-compose down
sudo docker-compose up
sudo docker-compose up -d

sudo docker-compose -f docker-compose1.yml up medical
sudo docker-compose -f docker-compose1.yml stop medical
sudo docker-compose -f docker-compose1.yml up -d medical

apt-get install iputils-ping
ping neo4j

docker ps|grep medical
docker exec -it 395a019c6380 bash
python chatbot_graph.py

docker exec -it medical python chatbot_graph.py

python3 chatbot_graph.py

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
sudo pip3 install py2neo==4.3.0

python3 chatbot_graph.py
sudo pip3 install pyahocorasick -i https://pypi.tuna.tsinghua.edu.cn/simple/

sudo yum install python3-devel
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

docker search python
NAME                             DESCRIPTION                                     STARS               OFFICIAL            AUTOMATED
python                           Python is an interpreted, interactive, objec…   6902                [OK]                
pypy                             PyPy is a fast, compliant alternative implem…   303                 [OK]                
kaggle/python                    Docker image for Python scripts run on Kaggle   157                                     [OK]
nikolaik/python-nodejs           Python with Node.js                             88                                      [OK]
joyzoursky/python-chromedriver   Python with Chromedriver, for running automa…   60                                      [OK]
arm32v7/python                   Python is an interpreted, interactive, objec…   58                                      
hylang                           Hy is a Lisp dialect that translates express…   42                  [OK]                
centos/python-35-centos7         Platform for building and running Python 3.5…   39                                      
centos/python-36-centos7         Platform for building and running Python 3.6…   34
```