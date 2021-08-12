
import 'dart:convert';

import 'package:flutter_mvvm/Models/picture.dart';
import 'package:http/http.dart' as http;


class Services {

  Future<List<PicSumModel>?> fetchPictureAPI() async {
    String url = "https://picsum.photos/v2/list";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200 ){
      final json = jsonDecode(response.body) as List<dynamic>;
      final listResult = json.map((e) => PicSumModel.fromJson(e)).toList();
      return listResult;
    }
    throw Exception('Error fetching Pictures');
  }
}