#!/bin/bash

#build in jenkins

# docker私有仓库的地址
REG_URL=172.20.0.2
REG_PORT=5000
JOB_NAME=node-app

#根据时间生成tag
TAG=$REG_URL:$REG_PORT/$JOB_NAME:$1

#使用项目目录下的Dockerfile文件打包
docker build -t $TAG $WORKSPACE/.
echo "build images finished"

docker push $TAG
echo "push images finished"

docker rmi $TAG
echo "remove images finished"
