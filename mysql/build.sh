#!/bin/bash

# Function to check whether everything executed successfully
checkExecution() {
    if [ $1 -eq 0 ]; then
        echo \'$2\' executed successfully!
    else
        echo \'$2\' failed!
        exit -1
    fi
}

# Building Docker images
docker build -t szitnik/opb-mysql:8.0 ./opb-mysql
checkExecution $? "Building mysql image."

docker build -t szitnik/opb-phpmyadmin:4.8 ./opb-phpmyadmin
checkExecution $? "Building phpMyAdmin image."

# Push images to dockerhub
#docker login
#docker push szitnik/opb-mysql:8.0
#docker push szitnik/opb-phpmyadmin:4.8

# Running the cluster
#docker-compose up

# Navigate to http://localhost:8080 enter root/Geslo.01 and enjoy!