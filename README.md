# SEGR5910_Project

This is an introduction to Docker and Deployment. The files were taken from [this](https://github.com/kubernetes/kubernetes/tree/master/examples/guestbook-go). This is for educational purposes only. 

## Prerequisites

- Install Docker
- Clone the git repo for the Dockerfile and configuration files.
- This only works for the web application for linux.
- Port 3000 must be unoccupied.
- IMPORTANT: make sure the web application has been built and is named "example-webapp-linux". This will not work if the .bin file for the web application is named differently.

## Run Dockerfile/ Build Image

The Docker image can be built in two ways - through the Makefile or terminal commands:

  - Makefile commands: ```make build```
    + Optional Parameters:
      * **DEV_NAME**=name of developer creating the image (default=guevarae)
      * **IMAGE_NAME**=name of the image (default=guestbook)
      * **VERSION**=version number (default=latest)

    + Example: ```make build DEV_NAME=jerryj IMAGE_NAME=hostbook VERSION=1.0.1```

  - terminal commands: ```docker build . -t IMAGE_NAME/DEV_NAME:VERSION```
    + fill in IMAGE_NAME, DEV_NAME, and VERSION accordingly
    + Example: ```docker build . -t hostbook/jerryj:1.0.1```

## Run Docker Container

The docker image can be run in two ways: 

  - Makefile command: ```make run```
    + Optional Parameters:
      * **DEV_NAME**=name of developer creating the image (default=guevarae)
      * **IMAGE_NAME**=name of the image (default=guestbook)
      * **VERSION**=version number (default=latest)

  - Terminal command: ```docker run -it -p 0.0.0.0:3000:3000 IMAGE_NAME/DEV_NAME:VERSION```
    + fill in IMAGE_NAME, DEV_NAME, and VERSION accordingly

**NOTE:** To build and run in one line, use the Makefile command with the same optional parameters ```make build-run```

## Open Website

  open a web browser and type: ```0.0.0.0:3000```

## Dockerfile and initialization Configuration

The Dockerfile configuration
  - uses Ubuntu OS
  - runs apt-get update and installs wget and npm
  - creates app directory and adds the webapp files to it
    + webapp loc: https://s3-us-west-2.amazonaws.com/techops-interview-webapp/webapp.tar.gz
  - installs Redis
  - adds the initialization_script for startup of the webapp in a container
  - exposes port 3000 3000 

The initialization_script configuration
  - starts redis-server
  - goes into the app folder to start running the webapp called *example-webapp-linux*


