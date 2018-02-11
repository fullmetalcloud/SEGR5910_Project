FROM ubuntu

RUN apt-get update && \
    apt-get install -y wget nodejs npm 

ADD ./webapp/dist/example-webapp-linux /app/guestbook
ADD ./webapp/public /app/public

EXPOSE 3000 3000

WORKDIR /app
CMD ["./guestbook"]


