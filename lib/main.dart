import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:portal_mhs/dashboard_page.dart'; // pastikan path sesuai

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting(
    'id_ID',
    null,
  ); // Inisialisasi locale Indonesia
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardPage(), // arahkan ke halaman Dashboard
    );
  }
}
