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
docker build -t szitnik/opb-exist ./
checkExecution $? "Building eXist image."

# Push images to dockerhub
#docker login
#docker push szitnik/opb-exist

# Running the server
#docker run -it -d -p 8881:8080 --name opb-exist szitnik/opb-exist

# Navigate to http://localhost:8881 and enjoy!