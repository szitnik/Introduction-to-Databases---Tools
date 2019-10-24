# Introduction to Databases - lab environment setup (mySQL)

The repository is created for lab sessions during the Introduction to Databases course at the University of Ljubljana, Faculty for computer and information science.

## Mac OS, Linux - instructions

1. Install Docker Engine - Community from [the official Web page](https://docs.docker.com/install/) or using your preffered package manager.
2. Copy the [docker-compose.yml](docker-compose.yml) file into an empty directory on your system.
3. Enter into the directory where you copied the *docker-compose.yml* file and run: `docker-compose up`
4. To access services (you might need to wait a little for services to bootstrap), navigate to [http://localhost:8080](http://localhost:8080) and login as "*root*" with password "*Geslo.01*".

When you finish, run `docker-compose down` in your directory or press CTRL+C if the previous command is running.

## Windows users - instructions

1. Install Docker Engine - Community from [the official Web page](https://docs.docker.com/install/) or using your preffered package manager.
2. Copy the [docker-compose.yml](docker-compose.yml) file into an empty directory on your system.
3. Run application *Docker Quickstart Terminal* and wait for the console to appear.
4. Run command `docker-machine ip` to get the IP of your virtual machine running Docker containers (by default, this should be something like 192.168.99.199).
3. Enter into the directory where you copied the *docker-compose.yml* file and run: `docker-compose up`
4. To access services (you might need to wait a little for services to bootstrap), navigate to [http://192.168.99.100:8080](http://192.168.99.100:8080) and login as "*root*" with password "*Geslo.01*" (change the IP with the IP you got at the step 4 if different). Use Google Chrome browser if you have problems accessing the phpMyAdmin.

When you finish, run `docker-compose down` in your directory or press CTRL+C if the previous command is running.