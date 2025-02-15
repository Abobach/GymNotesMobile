import 'package:flutter/material.dart';
import 'dart:async';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:gymnote/screens/home_screen.dart';
import 'package:gymnote/screens/onbording.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'lib/assets/image/splash.jpg',
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Container(
                color: Colors.transparent,
                child: Text(
                  'GYMNOTE',
                  style: TextStyle(
                    fontSize: 45,
                    fontFamily: "Astronomus",
                   
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 6,
                        color: Colors.black.withOpacity(0.7),
                        offset: const Offset(2, 2),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 70.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OnboardingPage1()));
                      //  логика авторизации
                    },
                    icon: const Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 24,
                    ),
                    label: const Text(
                      'Sign in with Email',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 20),
                    ),
                    onPressed: () {
                      //  логика авторизации
                    },
                    icon: const Icon(
                      Icons.apple,
                      color: Colors.white,
                      size: 24,
                    ),
                    label: const Text(
                      'Sign in with Apple',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
