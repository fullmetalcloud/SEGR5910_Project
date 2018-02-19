# SEGR5910_Project

This is an introduction to Docker and Deployment. The files were taken from [this](https://github.com/kubernetes/kubernetes/tree/master/examples/guestbook-go). This is for educational purposes only. 

## Prerequisites

- Install Docker
- clone the git repo for the Dockerfile and configuration files
- IMPORTANT: make sure the web application has been built and is named "example-webapp-linux". This will not work if the .bin file for the web application is named differently.
- This only works for the web application for linux
- port 3000 must be unoccupied

## Run Dockerfile/ Build Image

The Docker image can be built in two ways - through the Makefile or terminal commands:
- Makefile commands: **make build**
  + Optional Parameters:
    '''
    DEV_NAME=name of developer creating the image (default=guevarae)
    IMAGE_NAME=name of the image (default=guestbook)
    VERSION=version number (default=latest)
    '''

- terminal commands: **docker build . -t IMAGE_NAME/DEV_NAME:VERSION**
  + fill in IMAGE_NAME, DEV_NAME, and VERSION accordingly

## Run Docker Container

- Makefile command: make run
  + Optional Parameters:
    '''
    DEV_NAME=name of developer creating the image (default=guevarae)
    IMAGE_NAME=name of the image (default=guestbook)
    VERSION=version number (default=latest)
    '''

- Terminal command: docker run -it -p 0.0.0.0:3000:3000 IMAGE_NAME/DEV_NAME:VERSION
  + fill in IMAGE_NAME, DEV_NAME, and VERSION accordingly

## Open Website

- open a web browser and type: 0.0.0.0:3000

## Editing Dockerfile


