# syntax=docker/dockerfile:1
# specify my baseImage and (optionally) the version
FROM node:14.17.1
# specify the source and destination paths
COPY . /app
# specify the path of the working directory
WORKDIR /app
# install dependencies
RUN npm install
#expose the port in the docker container
EXPOSE 3000
# the command to start our app
CMD ["node", "server.js”]
