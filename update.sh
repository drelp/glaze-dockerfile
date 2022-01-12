#!/bin/bash
cp -r docker/centos/7/neo4j/* docker-neo4j
cp -r docker/centos/7/neo4jv3 docker-neo4j
cd docker-neo4j
git add .
git commit -a -m 'update'
git push -u origin main
