lamp_dev
-----------------------
Lamp environment to develop web applications

#Install
- Install **docker-composer**
- Clone this repo and run ```docker-composer up```

##HOW TO
- Access to a container
```
docker exec -it [containerId] bash
```
- Ip of the Debian server is 127.0.0.1 as all the containers
- All the containers are in the same network, so they can speak each others using their aliases
- Containers data persists in the folder *data*

##Containers used:
- [Debian-Apache2-PHP5](https://hub.docker.com/r/nimmis/apache-php5/)
- [Mysql](https://hub.docker.com/_/mysql/)
- [Redis](https://hub.docker.com/_/redis/)
