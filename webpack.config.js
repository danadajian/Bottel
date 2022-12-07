const createExpoWebpackConfigAsync = require('./webpack-config');

module.exports = async function (env, argv) {
  return await createExpoWebpackConfigAsync({ ...env, mode: 'production' }, argv);
};
