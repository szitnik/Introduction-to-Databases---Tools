# Introduction to Databases - lab environment

The repository is created for the lab session during the Introduction to Databases course at the University of Ljubljana, Faculty for computer and information science.

The repository consists of multiple folders:

* *mysql* - The folder contains a script to build the docker images and a docker-compose script to run the images published in the Dockerhub registry. 
* *to-be-added* ...

# Usage instructions

This are general instructions to run specific services that are defined in each folder (e.g. *mysql*).

## Mac OS, Linux - instructions

1. Install Docker Engine - Community from [the official Web page](https://docs.docker.com/install/) or using your preffered package manager.
2. Copy the *docker-compose.yml* file from a specific folder into an empty directory on your system.
3. Enter into the directory where you copied the *docker-compose.yml* file and run: `docker-compose up`
4. To access services (you might need to wait a little for services to bootstrap):
	* For *mysql* navigate to [https://localhost:8080](https://localhost:8080) and login as "*root*" with password "*Geslo.01*".

When you finish, run `docker-compose down` in your directory or press CTRL+C if the previous command is running.

## Windows users - instructions

1. Install Docker Engine - Community from [the official Web page](https://docs.docker.com/install/) or using your preffered package manager.
2. Copy the *docker-compose.yml* file from a specific folder into an empty directory on your system.
3. Run application *Docker Quickstart Terminal* and wait for the console to appear.
4. Run command `docker-machine ip` to get the IP of your virtual machine running Docker containers (by default, this should be something like 192.168.99.199).
3. Enter into the directory where you copied the *docker-compose.yml* file and run: `docker-compose up`
4. To access services (you might need to wait a little for services to bootstrap):
	* For *mysql* navigate to [https://192.168.99.100:8080](https://192.168.99.100:8080) and login as "*root*" with password "*Geslo.01*" (change the IP with the IP you got at the step 4 if different). 

When you finish, run `docker-compose down` in your directory or press CTRL+C if the previous command is running.