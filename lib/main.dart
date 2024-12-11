import 'package:example/ui/user/homepage.dart';
import 'package:example/ui/user/location.dart';
import 'package:flutter/material.dart';
import 'ui/user/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SignInPage(),
    );
  }
}
