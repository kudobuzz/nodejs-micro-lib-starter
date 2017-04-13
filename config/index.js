// Here you can load config here.
// Dont forget to add validations if any for all config that will obtaine from process.env
const config = {}

module.exports = env => {
  if (config[env] === undefined) throw new Error(`No config for env variable ${env}`)
  return config[env]
}
