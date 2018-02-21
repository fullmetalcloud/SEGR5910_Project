Individual Project - Lessons Learned

I have learned both conceptual and technical lessons from this project. This is
the first time I have used Docker and Redis, so I spent more time than expected
to learn the tools and the application itself. I took the time to learn the 
tools because I figure that I will eventually use or see these tools in the 
working world. This project was a good lesson in the DevOps and real world, 
i.e. expect asking many questions to developers, learn new tools, and expect 
constant changes to applications and your own setup.   

The technical lessons I learned was learned through lots of trial and error 
using Docker and Redis. I learned how to build images and containers from the 
example given in class. Before the application change, I learned how to start
and run Redis on the container, how to link containers, expose ports, and how 
to test Redis servers through redis-cli ping and direct communication to the 
redis server for saved key-value pairs. After the application change, I learned
how to use docker-compose, the base image "redis", and networking between 
containers through the docker-compose file. Through some research, I learned 
some good practices for writing docker-compose and Dockerfile files, such as 
using set versions of images rather than the latest image to avoid conflicts
and defining environment variables when needed, not at the beginning. Using 
layers for building images helps speed up the setup of the environment. That is
why I have a Dockerfile-base file to define and create the base image for the 
webserver image. 

The conceptual lessons helped understand the DevOps process. I did get the 
unchanged application to work, but it did not seem to match what a DevOps setup
would be like. I first had Redis and the webserver on the same container, but
I thought it would be better to have Redis and the webserver separate. Also, 
based on how the original application is supposed to run, there should have 
been multiple Redis containers (redis-master and redis-slaves) and a webserver 
container. I learned that asking the developer how the application is supposed 
to run is (extremely) necessary for automating the build, test, and deployment. 
I found a way to implement the application, but it was incorrect on how it was 
supposed to be run. When the change to the application occurred, it changed how 
I implemented the Dockerfile and the docker-compose.yml. I expect this to occur
in the real world. 

The current configuration is not flexible for developers and operations. If I 
had more time, I would find ways to allow the user to define the location of the 
application files, and I would create a testing environment with preset data for 
the Redis containers. I would try to automate testing the connection and 
communication of the Redis master container, slave container, and the webserver 
container. I would also look into better ways to implement Docker and 
docker-compose to speed up deploying and for readability of the file. 

