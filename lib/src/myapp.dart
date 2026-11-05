import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class15/src/page/categoryScreen.dart';
import 'package:flutter_class15/src/page/homeScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Categoryscreen());
  }
}
