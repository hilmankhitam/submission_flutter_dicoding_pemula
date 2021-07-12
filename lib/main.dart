import 'package:flutter/material.dart';
import 'package:submission/screens/homepage.dart';
import 'package:submission/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Submission',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: mainColor,
        accentColor: accentColor3,
        scaffoldBackgroundColor: scaffoldBackgroundColor
      ),
      home: HomePage(),
    );
  }
}
