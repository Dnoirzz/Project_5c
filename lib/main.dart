import 'package:flutter/material.dart';
import 'screens/landing.dart'; // Import file landing.dart
import 'package:portal_mhs/screens/dashboard_page.dart'; // Import DashboardPage
import 'package:intl/date_symbol_data_local.dart'; // Tambahkan ini

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id_ID', null); // Inisialisasi locale Indonesia
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // biar tidak ada tulisan debug
      home: LandingPage(), // arahkan ke landing page
    );
  }
}
