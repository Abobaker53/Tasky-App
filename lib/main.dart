import 'package:flutter/material.dart';
import 'first.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'second.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  String name = prefs.getString("name") ?? "";

  runApp(MyApp(name: name));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: name.isEmpty ? FirstScreen() : Second(),
    );
  }
}
