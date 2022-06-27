FROM node:13-alpine

ENV MONGO_DB_USER=admin MONGO_DB_PASSWORD=password

RUN mkdir -p /home/app

COPY ./app /home/app

# set default dir so that next commands executes in /home/app dir
WORKDIR /home/app

# will execute npm install in /home/app directory because of WORKDIR
RUN npm install

# no need for /home/app/server.js because WORKDIR is set
CMD ["node", "server.js"]

