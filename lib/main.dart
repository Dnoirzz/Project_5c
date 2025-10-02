import 'package:flutter/material.dart';
import '../Project_5c/lib/login_screen.dart';
import '../Project_5c/lib/forgot_password_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
