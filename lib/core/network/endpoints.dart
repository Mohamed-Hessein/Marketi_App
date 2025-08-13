class Endpoints {
  static String baseurl = 'https://supermarket-dan1.onrender.com/api/v1';
  static String signup = '/auth/signUp';
  static String signIn = '/auth/signIn';
  static String resetCode = '/auth/resetPassCode';
  static String activeCode = '/auth/activeResetPass';
  static String changePass = '/auth/resetPassword';
  static String SignUp(id) {
    return "$baseurl/$id";
  }
}

class ApiKeys {
  static String code = 'code';
  static String status = "status";
  static String ErrorMessage = "ErrorMessage";
  static String userNeme = "";
  static dynamic email = 'email';
  static String password = "password";
  static String message = "message";
  static String token = "token";
  static String id = "id";
  static String profilePic = "profilePic";
  static String location = "location";
  static String Phone = "phone";
  static String confrimPawword = "confirmPassword";
  static String name = "name";
}
