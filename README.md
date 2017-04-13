Logger

Request Logger connect middleware for Express. Powered by Bunyan.
[ ![Codeship Status for kudobuzz/logger](https://app.codeship.com/projects/b76b68d0-01f1-0135-126d-26bcd9d2db5b/status?branch=master)](https://app.codeship.com/projects/212995)


# Installation
$ npm install --save-exact @kub.bz/logger


# Usage
```
$ npm install --save-exact @kub.bz/logger

// Inside your app config 

const log = require('../logger')()
const app = require('express')()
const uuid = require('uuid')

'use strict';
const assignReqId = (req, res, next) => {
  req.id = uuid.v4()
  next()
}

app.use(assignReqId) // assignRequestId to each incoming request
app.use(log.reqResLogger()) // log each request
app.use(log.attachLogToReq('example')) // add log request on each handle

app.listen(5000)
```

# Configurations
Well when creating a logger object you can pass all the respecitve [bunyan](https://github.com/trentm/node-bunyan) configurations
It is better to provide serviceName

```
const bunyanConfig = {name: 'serviceName'} 
const log = require('../logger')(bunyanConfig) 

```
