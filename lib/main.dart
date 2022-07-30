import 'package:flutter/material.dart';
import 'glass_morphism.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GlassMorphism(),
    );
  }
}



