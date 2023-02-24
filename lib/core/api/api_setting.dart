class ApiSettings {
  static const String baseUrl = 'http://demo-api.mr-dev.tech/api/';
  static const String users = '${baseUrl}users';
  static const String register = '${baseUrl}students/auth/register';
  static const String login = '${baseUrl}students/auth/login';
  static const String logout = '${baseUrl}students/auth/logout';
  static const String forgetPassword =
      '${baseUrl}students/auth/forget-password';
  static const String resetPassword = '${baseUrl}students/auth/reset-password';
  static const String images = '${baseUrl}student/images';
}
