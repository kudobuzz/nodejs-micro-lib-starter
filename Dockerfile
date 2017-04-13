FROM node:boron

MAINTAINER Obeng William

ENV ROOTPATH=/usr/src/lib

WORKDIR $ROOTPATH

RUN  cd /tmp  &&  yarn

RUN mkdir -p $ROOTPATH && cd $ROOTPATH &&  ln -s /tmp/node_modules

COPY package.json  yarn.lock /usr/src/lib/

COPY . $ROOTPATH

RUN yarn
