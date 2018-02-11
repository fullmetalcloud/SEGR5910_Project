# SEGR5910_Project

This is an introduction to Docker and Deployment. The files were taken from [this](https://github.com/kubernetes/kubernetes/tree/master/examples/guestbook-go). This is for educational purposes only. 

## Prerequisites

- Install Docker
- clone git repo

## Run Dockerfile/ Build Image

- Run in terminal: docker build . -t guestbook

## Run Docker Container

- Run in terminal: docker run -it -p 0.0.0.0:3000:3000 guestbook
- Run in background container: docker run -it -d -p 0.0.0.0:3000:3000 guestbook

## Open Website

- open web browser and type: 0.0.0.0:3000

## Editing Dockerfile/ TODO

- ADD MULTISTAGE BUILD
- ADD DATABASE USING REDIS


