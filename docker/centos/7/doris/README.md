```
#----------------- draft -------------
# - sleep
# - '20'
# - |
# - mysql 
# - -uroot
# - -h
# - fe-leader
# - -P
# - '9030'
# - -e 
# - 'ALTER SYSTEM ADD OBSERVER "fe-follower:9010"; ALTER SYSTEM ADD BACKEND "be-1:9050";ALTER SYSTEM ADD BACKEND "be-2:9050"'


# yum install net-tools -y
# docker run  -it --network doris  mysql:5.7 bash
# mysql -uroot -h fe-leader -P 9030
# ALTER SYSTEM ADD OBSERVER "fe-follower:9010"; ALTER SYSTEM ADD BACKEND "be-1:9050";ALTER SYSTEM ADD BACKEND "be-2:9050"
# SHOW PROC '/frontends';
# SHOW PROC '/backends';
```