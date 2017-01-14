lamp_dev
-----------------------
Lamp environment to develop web applications using Docker
Docker configuration uses [docker-composer](https://docs.docker.com/compose/compose-file/)

#Install
- Install [**docker**](https://www.docker.com) for your operationg system
- Clone this repo and run ```docker-composer up -d```

##Docker image
- Ubuntu 14.04
- Apache2
- PHP 5.5.9
- Nodejs v7
- Npm
- Curl
- Wget
- Ruby2
- Openjdk-8

##Containers used:
- [Debian-Apache2-PHP5](https://hub.docker.com/r/nimmis/apache-php5/)
- [Mysql](https://hub.docker.com/_/mysql/)
- [Redis](https://hub.docker.com/_/redis/)

##HOW TO
- Access to a container
```
docker exec -it [containerId] bash
```
- Ip of the Debian server is 127.0.0.1 as all the containers
- All the containers are in the same network, so they can speak each others using their aliases
- Containers data persists in the folder *data*
