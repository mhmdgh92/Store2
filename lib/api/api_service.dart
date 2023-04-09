import 'package:http/http.dart' as http;
import 'package:store2/model/Api/login_model.dart';
import 'dart:convert';

class APIService {
  final String baseUrl = 'https://q8store.co/api/';
  final String user = 'user/';

  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    String url = baseUrl + user + "login";
    try {
      final response = await http.post(Uri.parse(url),
          headers: {'Accept-Language': 'ar'}, body: requestModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 400) {
        return LoginResponseModel.fromJson(json.decode(response.body));
      } else {
        return LoginResponseModel.fromJson(json.decode(response.body));
      }
    } catch (e) {
      print('LoginResponseModel:' + e.toString());
      return LoginResponseModel.fromJson(json.decode(''));
    }
  }
}
