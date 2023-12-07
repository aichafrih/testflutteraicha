import 'package:flutter/material.dart';
import 'package:testflutteraicha/intro_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IntroPage(), // Remplacez IntroPage par votre widget principal
      ),
    );
  }
}
