FROM ubuntu:18.04
FROM node:16

LABEL maintainer="a.janethrocketmail@gmail.com"
LABEL project="bootcamp"

WORKDIR /home/node/app
RUN chown -R node:node /home/node/app

COPY --chown=node:node package.json .

RUN npm install

COPY --chown=node:node . .
# At the end, set the user to use when running this image
EXPOSE 8888
USER node
CMD npm run start