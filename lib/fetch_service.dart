import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'constants/constants.dart';
import 'models/county_model.dart';

Future<List<County>> fetchCounties() async {
  final box = await Hive.openBox('countiesBox');
  final cachedCounties = box.get('counties');

  if (cachedCounties != null) {
    final counties = cachedCounties.cast<County>();
    return counties;
  }
  
  try {
    final response = await http.get(Uri.parse(Constants.URL));
    if (response.statusCode == 200) {
      final counties = jsonDecode(response.body)
          .map<County>((json) => County.fromMap(json))
          .toList();

      // Store the fetched data in Hive
      await box.put('counties', counties);

      return counties;
    } else {
      throw Exception('Failed to load counties');
    }
  } catch (e) {
    throw Exception('Failed to load counties');
  } finally {
    await box.close();
  }
}
