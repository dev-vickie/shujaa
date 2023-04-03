import 'dart:convert';

import 'package:http/http.dart' as http;
import 'constants/constants.dart';
import 'models/county_model.dart';

Future<List<County>> fetchCounties() async {
  late List<County> counties;
  try {
    final response = await http.get(Uri.parse(Constants.URL));
    if (response.statusCode == 200) {
      counties = jsonDecode(response.body)
          .map<County>((json) => County.fromMap(json))
          .toList();
    } else {
      throw Exception('Failed to load counties');
    }
  } catch (e) {
    throw Exception('Failed to load counties');
  }
  return counties;
}