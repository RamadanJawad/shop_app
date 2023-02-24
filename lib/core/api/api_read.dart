import 'dart:convert';
import 'package:shop_app/core/api/api_helper.dart';
import 'package:shop_app/core/api/api_setting.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/model/image.dart';

class ReadDataFromApi with ApiHelper {
  Future<List<CartImage>> readImages() async {
    Uri uri = Uri.parse(ApiSettings.images);
    var response = await http.get(uri,headers: headers);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      var jsonArray = jsonResponse['data'] as List;
      return jsonArray.map((e) => CartImage.fromJson(e)).toList();
    }
    return [];
  }
}
