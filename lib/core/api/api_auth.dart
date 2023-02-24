import 'dart:convert';
import 'package:get/get.dart';
import 'package:shop_app/core/api/api_helper.dart';
import 'package:shop_app/core/api/api_response.dart';
import 'package:shop_app/core/api/api_setting.dart';
import 'package:shop_app/core/shared/sheard_controller.dart';
import 'package:shop_app/model/users.dart';
import 'package:http/http.dart' as http;

class AuthApiController with ApiHelper {
  String code='';
  Future<ApiResponse> login(
      {required String email, required String password}) async {
    Uri uri = Uri.parse(ApiSettings.login);
    var response =
        await http.post(uri, body: {"email": email, "password": password});
    if (response.statusCode == 200 || response.statusCode == 201) {
      var jsonResponse = jsonDecode(response.body);
      if (response.statusCode == 200) {
        var jsonObject = jsonResponse['object'];
        User user = User.fromJson(jsonObject);
        SharedPrefController().save(user: user);
      }
      return ApiResponse(
          message: jsonResponse['message'], success: jsonResponse['status']);
    }
    return failedResponse;
  }

  Future<ApiResponse> register({required User user}) async {
    Uri uri = Uri.parse(ApiSettings.register);
    var response = await http.post(uri, body: {
      "full_name": user.fullName,
      "email": user.email,
      "password": user.password,
      "gender": user.gender
    });
    if (response.statusCode == 200 || response.statusCode == 201) {
      var jsonResponse = jsonDecode(response.body);
      return ApiResponse(
          message: jsonResponse['message'], success: jsonResponse['status']);
    }
    return failedResponse;
  }

  Future<ApiResponse> forgetPassword({required String email}) async {
    Uri uri = Uri.parse(ApiSettings.forgetPassword);
    var response = await http.post(uri, body: {"email": email});
    if (response.statusCode == 200 || response.statusCode == 400) {
      var jsonResponse = jsonDecode(response.body);
      code = jsonResponse['code'].toString();
      print('Code: ${jsonResponse['code']}');
      return ApiResponse(
          message: jsonResponse['message'], success: jsonResponse['status'],code:jsonResponse['code'].toString());
    }
    return failedResponse;
  }

  Future<ApiResponse> codeVerification(
      {required String email,
      required String password,
      required String code}) async {
    Uri uri = Uri.parse(ApiSettings.resetPassword);
    var response = await http.post(uri, body: {
      'email': email,
      'code': code,
      'password': password,
      'password_confirmation': password
    });
    if (response.statusCode == 200 || response.statusCode == 400) {
      var jsonResponse = jsonDecode(response.body);
      return ApiResponse(
          message: jsonResponse['message'], success: jsonResponse['status']);
    }
    return failedResponse;
  }

  Future<ApiResponse> logout() async {
    Uri uri = Uri.parse(ApiSettings.logout);
    var response = await http.get(uri, headers: headers);
    if (response.statusCode == 200 || response.statusCode == 401) {
      SharedPrefController().clear();
      var jsonResponse = jsonDecode(response.body);
      return ApiResponse(
          message: response.statusCode == 200
              ? jsonResponse['message']
              : 'Logged out successfully',
          success: jsonResponse['status']);
    }
    return failedResponse;
  }
}
