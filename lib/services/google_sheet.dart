import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:gzp/models/devices.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class GoogleSheetApi {
  static String BASE_URL = dotenv.get('GOOGLE_SHEET');
  Future<List<Devices>> loadAll() async {
    final response = await http.get(Uri.parse((BASE_URL)));
    if (response.statusCode == 200) {
      print(response.body);

      Iterable decoded = jsonDecode(response.body);

      List<Devices> result = decoded.map((x) => Devices.fromJson(x)).toList();

      return result;
    } else {
      throw Exception('Failed to load post');
    }
  }
}
