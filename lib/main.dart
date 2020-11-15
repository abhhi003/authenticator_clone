import 'package:flutter/material.dart';
import 'home_page.dart';
import 'styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF25509C),
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: HomePage(),
    );
  }
}
