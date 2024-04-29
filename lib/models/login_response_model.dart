import 'dart:convert';

LoginResponseModel loginResponseJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

class LoginResponseModel {
  LoginResponseModel({
    // required this.message,
    required this.accessToken,
  });
  // late final String message;
  late final String accessToken;

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    // message = json['message'];
    accessToken = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    // _data['message'] = message;
    _data['accessToken'] = accessToken;
    return _data;
  }
}
