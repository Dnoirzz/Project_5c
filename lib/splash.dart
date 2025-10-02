import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

import 'package:portal_mhs/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _rotationController;

  @override
  void initState() {
    super.initState();

    _rotationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    )..repeat();

    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const MainApp()),
      );
    });
  }

  @override
  void dispose() {
    _rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double radius = 90;
    List<String> vectors = [
      "assets/vector1.png",
      "assets/vector2.png",
      "assets/vector3.png",
      "assets/vector4.png",
      "assets/vector5.png",
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF38536A),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            RotationTransition(
              turns: _rotationController,
              child: Stack(
                alignment: Alignment.center,
                children: List.generate(vectors.length, (index) {
                  final angle = (2 * pi / vectors.length) * index;

                  return Transform(
                    transform: Matrix4.identity()
                      ..translate(
                        radius * cos(angle),
                        radius * sin(angle),
                      )
                      // rotasi tambahan agar sisi besar menghadap pusat
                      ..rotateZ(angle + pi),
                    alignment: Alignment.center,
                    child: Image.asset(
                      vectors[index],
                      width: 80,
                      height: 80,
                      color: Colors.white,
                    ),
                  );
                }),
              ),
            ),
            // Icon tengah tetap diam
            const Icon(
              Icons.school,
              size: 60,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//           child: Text(
//         'MainApp',
//         style: TextStyle(fontSize: 24),
//       )),
//     );
//   }
// }
  }
}
