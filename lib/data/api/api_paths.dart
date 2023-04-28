abstract class ApiPaths {
  static const baseEventsUrl = 'http://158.160.18.237:10001/api/v1';
  static const baseAuthUrl = 'http://158.160.18.237:10000/api/v1';
  static const baseAttachmentUrl = 'http://158.160.18.237:10007';
  static const events = '$baseEventsUrl/events';
  static const register = '$baseAuthUrl/user/register';
  static const login = '$baseAuthUrl/user/login';
  static const logout = '$baseAuthUrl/logout';
  static const file = '$baseAttachmentUrl/parse_resume/';
}
