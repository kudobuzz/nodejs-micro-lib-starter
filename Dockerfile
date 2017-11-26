FROM us.gcr.io/kudobuzz-projects/docker-node

ENV ROOTPATH=/usr/src/lib

WORKDIR $ROOTPATH

COPY package.json $ROOTPATH/

RUN npm install

COPY . $ROOTPATH