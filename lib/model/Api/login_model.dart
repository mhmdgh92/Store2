class LoginResponseModel {
  final bool status;
  final int code;
  final String message;
  final Map<String, dynamic> data;

  LoginResponseModel(
      {required this.status,
      required this.code,
      required this.message,
      required this.data});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    final status = json['status'] as bool;
    final code = json['code'] as int;
    final message = json['message'] as String;
    final data = json['data'] as Map<String, dynamic>;
    return LoginResponseModel(
        status: status, code: code, message: message, data: data);
  }
}

class LoginRequestModel {
  String email;
  String password;

  LoginRequestModel({
    this.email = '',
    this.password = '',
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email.trim(),
      'password': password.trim(),
    };

    return map;
  }
}
