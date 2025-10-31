function fn() {
  var config = {};
  config.baseUrl = 'https://api.restful-api.dev';
  karate.log('Base URL:', config.baseUrl);
  return config;
}
