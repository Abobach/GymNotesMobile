import 'package:flutter/material.dart';
import 'dart:async';

import 'package:gymnote/screens/home_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
            // Логотип
            Image.asset(
              'lib/assets/image/Group 2.png', // Замените на путь к вашему логотипу
              height: 120,
            ),
            const SizedBox(height: 20),
            // Текст
            const Text(
              'GYMNOTE',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Astronomus',
                color: Colors.lime
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}









