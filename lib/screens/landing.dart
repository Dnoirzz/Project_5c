import 'package:flutter/material.dart';
import 'login_screen.dart';      // import file login.dart
import 'register_screen.dart';   // import file register.dart

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Judul
                Text(
                  "Welcome to my apps",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF365368),
                  ),
                ),
                const SizedBox(height: 4),
                // Subjudul
                const Text(
                  "Sistem Penerima mahasiswa baru",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 16),

                // Icon topi wisuda
                Image.asset(
                  "assets/graduation_cap.png", // ganti dengan gambar kamu
                  width: 50,
                  height: 50,
                ),
                const SizedBox(height: 24),

                // Ilustrasi (gambar dari assets)
                Image.asset(
                  "assets/students.png", // ganti dengan gambar kamu
                  height: 180,
                ),
                const SizedBox(height: 40),

                // Tombol Login
                SizedBox(
                  width: 250, // tentukan lebar tombol
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF365368),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginScreen()),
                        );
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),

                const SizedBox(height: 12),

                // Tombol Register (outline)
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: Color(0xFF365368)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RegisterScreen()),
                      );
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF365368),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
