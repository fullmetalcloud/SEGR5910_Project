FROM ubuntu

RUN apt-get update && \
    apt-get install -y wget npm && \
    mkdir app && cd app && \
    wget https://s3-us-west-2.amazonaws.com/techops-interview-webapp/webapp.tar.gz && \
    tar xzf webapp.tar.gz && \
    wget http://download.redis.io/releases/redis-4.0.8.tar.gz && \
    tar xzf redis-4.0.8.tar.gz && \
    cd redis-4.0.8 && \
    make install && \
    cd utils && \
    ./install_server.sh 

COPY ./scripts/initialization_script /app/initialization_script

EXPOSE 3000 3000

ENTRYPOINT ["bash", "/app/initialization_script"]




