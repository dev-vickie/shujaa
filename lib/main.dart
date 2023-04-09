import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'models/county_model.dart';
import 'views/welcome_page.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(CountyAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
