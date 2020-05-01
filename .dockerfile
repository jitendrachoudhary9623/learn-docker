# use a existing base image to build a new one
FROM node:12

#Create  a directory
WORKDIR /usr/src/app

#Copy package.json
COPY package*.json ./

#Install dependency

RUN npm ci

#Copy complete code

COPY . .

#Expose a port no
EXPOSE 8080

#Run a command
#NOTE CMD can be used only once

CMD ["npm","run","dev"]
