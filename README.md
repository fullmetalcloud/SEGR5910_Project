# SEGR5910_Project

This is an introduction to Docker and Deployment. The files were taken from [this](https://github.com/kubernetes/kubernetes/tree/master/examples/guestbook-go). This is for educational purposes only. 

## Prerequisites

- Install Docker and Docker-compose (included for OSX and Linux)
- Clone the git repo for the needed scripts to run. 
- This only works for the web application for linux.
- Port 3000 must be unoccupied.
- IMPORTANT: make sure the web application has been built and is named "example-webapp-linux". This will not work if the .bin file for the web application is named differently.

## Build and start containers to test application
All files necessary to run the application are in the *scripts* folder. If this the first time running locally, the base image must be built first. Run this command in a shell:
```
docker build -f Dockerfile-base . -t base
```

To build the images necessary for running the application, run this command:
```
docker-compose build
```

To run the application with redis-master and redis-slave containers, run this command:
```
docker-compose up
```

The above commands can be run in the given shell script *run-test*.

To use the application, open a web browser and type:
```
0.0.0.0:3000 or localhost:3000
```

To end the application and the redis containers, run this command:
```
Docker-compose down
```

## Dockerfile and initialization Configuration

The Dockerfile-base description
  - uses Ubuntu OS
  - runs apt-get update and installs wget and npm

The Dockerfile-guestbook description
  - uses base image (created using Dockerfile-base)
  - creates app directory and adds the webapp files to it
    + webapp loc: https://raw.githubusercontent.com/michaeljon/SU_SEGR_5910_18WQ/master/webapp.tar.gz
  - adds the initialization_script for startup of the webapp in a container
  - exposes port 3000 3000
  - uses the initialization_script to run the web server

The docker-compose description
  - builds the guestbook services using the Dockerfile-guestbook file
  - builds the redis-master and redis-slave services using the built-in image for Redis
  - makes the redis-slave a slave of redis-master (command in redis-slave service)


