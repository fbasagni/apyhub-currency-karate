function fn() {
  var config = {};
  config.baseUrl = 'https://api.apyhub.com';
  var token = java.lang.System.getenv('APYHUB_TOKEN');
  if (!token) token = karate.properties['apyhub.token'];
  if (!token) {
    token = 'DUMMY_APYHUB_TOKEN';
    karate.log('[WARN] Token não encontrado, usando dummy.');
  }
  config.headers = { 'Content-Type': 'application/json', 'apy-token': token };
  return config;
}