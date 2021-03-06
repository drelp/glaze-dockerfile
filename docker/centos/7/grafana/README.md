```
grafana + promethieus
```

```shell script
sudo docker-compose build
sudo docker-compose down
sudo docker-compose up
sudo docker-compose up -d

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

sudo docker-compose up node_exporter
sudo docker-compose up -d node_exporter
sudo docker-compose stop node_exporter
sudo docker-compose rm node_exporter

sudo docker-compose logs -f grafana

sudo docker network create --subnet=172.19.0.0/16 grafana-network

mysql -h127.0.0.1 -uroot -p
root
create database grafana DEFAULT CHARACTER SET utf8mb4;
create user 'grafana'@'127.0.0.1' identified by 'grafana';
grant all privileges on grafana.* to 'grafana'@'127.0.0.1';
create user 'grafana'@'%' identified by 'grafana';
grant all privileges on grafana.* to 'grafana'@'%';
flush privileges;
```

```shell script
docker run -d \
  --net="host" \
  --pid="host" \
  -v "/:/host:ro,rslave" \
  quay.io/prometheus/node-exporter:latest \
  --path.rootfs=/host

# 9100
```

```
https://github.com/prometheus/node_exporter
https://github.com/prometheus-community/windows_exporter

https://www.cnblogs.com/zongwei/p/13937017.html

https://blog.csdn.net/u011943534/article/details/102906030

https://grafana.com/grafana/dashboards/162/revisions
k8s grafana
https:///dashboards/315

grafana dashboard import

https://grafana.com/grafana/dashboards/

https://grafana.com/grafana/dashboards/13978?pg=dashboards&plcmt=featured-dashboard-2

https://www.cnblogs.com/xuliuzai/p/11134714.html
13978
```

```
docker-compose
Define and run multi-container applications with Docker.

Usage:
  docker-compose [-f <arg>...] [--profile <name>...] [options] [--] [COMMAND] [ARGS...]
  docker-compose -h|--help

Options:
  -f, --file FILE             Specify an alternate compose file
                              (default: docker-compose.yml)
  -p, --project-name NAME     Specify an alternate project name
                              (default: directory name)
  --profile NAME              Specify a profile to enable
  -c, --context NAME          Specify a context name
  --verbose                   Show more output
  --log-level LEVEL           Set log level (DEBUG, INFO, WARNING, ERROR, CRITICAL)
  --ansi (never|always|auto)  Control when to print ANSI control characters
  --no-ansi                   Do not print ANSI control characters (DEPRECATED)
  -v, --version               Print version and exit
  -H, --host HOST             Daemon socket to connect to

  --tls                       Use TLS; implied by --tlsverify
  --tlscacert CA_PATH         Trust certs signed only by this CA
  --tlscert CLIENT_CERT_PATH  Path to TLS certificate file
  --tlskey TLS_KEY_PATH       Path to TLS key file
  --tlsverify                 Use TLS and verify the remote
  --skip-hostname-check       Don't check the daemon's hostname against the
                              name specified in the client certificate
  --project-directory PATH    Specify an alternate working directory
                              (default: the path of the Compose file)
  --compatibility             If set, Compose will attempt to convert keys
                              in v3 files to their non-Swarm equivalent (DEPRECATED)
  --env-file PATH             Specify an alternate environment file

Commands:
  build              Build or rebuild services
  config             Validate and view the Compose file
  create             Create services
  down               Stop and remove resources
  events             Receive real time events from containers
  exec               Execute a command in a running container
  help               Get help on a command
  images             List images
  kill               Kill containers
  logs               View output from containers
  pause              Pause services
  port               Print the public port for a port binding
  ps                 List containers
  pull               Pull service images
  push               Push service images
  restart            Restart services
  rm                 Remove stopped containers
  run                Run a one-off command
  scale              Set number of containers for a service
  start              Start services
  stop               Stop services
  top                Display the running processes
  unpause            Unpause services
  up                 Create and start containers
  version            Show version information and quit
```