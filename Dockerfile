#
# CloudBoost Dockerfile
#
# Pull base image nodejs image.
FROM node:8.15

#Maintainer.
MAINTAINER Ian Ishmael Oderon <ianoderon@gmail.com>

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/

RUN npm install

# Bundle app source
COPY . /usr/src/app

# Expose ports.
#   - 4730: CloudBoost HTTP REST API
EXPOSE 4730

#Run the app
CMD [ "npm", "start" ]


# FROM arm64v8/node AS builder
# MAINTAINER Ian Ishmael Oderon <ianoderon@gmail.com>
# WORKDIR /usr/src/app
# COPY package.json /usr/src/app
# RUN npm install
# COPY . /usr/src/app
# EXPOSE 4730
# CMD ["npm", "start"]