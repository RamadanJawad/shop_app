import 'dart:developer';
import 'dart:io';

import 'package:shop_app/core/api/api_response.dart';
import 'package:shop_app/core/shared/sheard_controller.dart';
mixin ApiHelper {
  ApiResponse get failedResponse => ApiResponse(
      message: 'Something went wrong , try again !', success: false);

  Map<String, String> get headers {
    return {
      HttpHeaders.authorizationHeader: SharedPrefController().token,
      HttpHeaders.acceptHeader: 'application/json',
    };
  }
}