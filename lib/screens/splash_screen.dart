import 'dart:async';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:sowlab_assignment/screens/login_screens.dart';

=======
import 'package:sowlab_assignment/screens/login_screen.dart';
>>>>>>> 9577af0f1f504db6ec02377013ad9457dd295a6a

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
<<<<<<< HEAD
  State<SplashScreen> createState() =>
      _SplashScreenState();
}

class _SplashScreenState
    extends State<SplashScreen> {
=======
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
>>>>>>> 9577af0f1f504db6ec02377013ad9457dd295a6a

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
<<<<<<< HEAD
        MaterialPageRoute(
            builder: (_) =>
            const LoginScreen()),
=======
        MaterialPageRoute(builder: (_) => const LoginScreen()),
>>>>>>> 9577af0f1f504db6ec02377013ad9457dd295a6a
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Text(
          "Sowlab",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}