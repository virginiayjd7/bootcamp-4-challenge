#!bin/bash

docker build -t ubuntu:18.04 .

docker run -it -p 8888:8888 ubuntu:18.04 

docker login

docker tag ubuntu:18.04 yjd7/ubuntu:18.04

docker push  yjd7/ubuntu:18.04