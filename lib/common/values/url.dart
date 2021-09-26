class Url {
  /// Server Url
  static const String baseUrl = 'http:///192.168.206.1:8888/xboot/app';
  static const String login = '/v1/member/login';
  static const String register = '/v1/member/register';

  /// Spark Pool Url
  static const String spBaseUrl = 'https://www.pool.com';
  static const String poolInfo = '$spBaseUrl/v1/pool/stats?pool=SPARK_POOL_CN';
}
