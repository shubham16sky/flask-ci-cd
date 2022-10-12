#!/bin/bash 

container=`sudo docker ps | awk '{print $NF}' | awk '(NR>1)'`


if [ ! -z "$container" ]
then
	sudo docker stop testing && sudo docker rm testing
else
	sudo docker run --name "testing" --detach -p 5002:5002 flask-ci-cd
fi 

