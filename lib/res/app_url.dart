class AppUrl {
  // base api url
  static var baseUrl = 'http://mod.cyberconceptslk.com/api';
  // static var baseUrl = 'https://apps.modiescapps.lankacom.net/api';

  static String Lang = 'en'; // en, si ta

  // core apis

  // static var getotp = '$baseUrl/$Lang/login_api_otp';
  // static var getotp = 'https://apps.modiescapps.lankacom.net/api/en/login_api';
  static var getotp = 'http://mod.cyberconceptslk.com/api/en/login_api';

  static var login = '$baseUrl/$Lang/login_api';

  static var loginEndPint = '$baseUrl/$Lang/reguser/create';

  static var attendanceApiEndPoint = '${baseUrl}attendance';

  static var leaveApiEndPoint = '${baseUrl}leave';

  // for network service

  static const int receiveTimeout = 10000;

  static const int connectionTimeout = 10000;
}
