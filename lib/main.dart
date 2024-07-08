import 'package:flutter/material.dart';
import 'package:medica_consult/features/authentication/screens/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gemini API Request',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: APIContentScreen(), // Your screen widget goes here
    );
  }
}
