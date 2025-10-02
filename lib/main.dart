import 'package:flutter/material.dart';
import 'screen/login_screen.dart';
import 'screen/forgot_password_screen.dart';
import 'screen/register_screen.dart';
import 'screen/data_pribadi_screen.dart'; // <-- import file baru

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

      // Tambahkan route disini 👇
      routes: {
        '/login': (context) => const LoginScreen(),
        '/forgotPassword': (context) => const ForgotPasswordScreen(),
        '/register': (context) => const RegisterScreen(),
        '/dataPribadi': (context) => const DataPribadiScreen(), // ini yang baru
      },
    );
  }
}
