
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:mini_project/view/splashscreen/onbarding1.dart';
import 'package:mini_project/view/Register_pages/sign_inpage.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState() {
    super.initState();
    checkOnboarding();
  }

  Future<void> checkOnboarding() async {
    await Future.delayed(const Duration(seconds: 3));

    final prefs = await SharedPreferences.getInstance();

    final onboardingCompleted =
        prefs.getBool('onboardingCompleted') ?? false;

    if (!mounted) return;

    if (onboardingCompleted) {
      // User already completed/skipped onboarding
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const sign_inpage(),
        ),
      );
    } else {
      // First time user
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const onbardingScreen1(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF79C1C),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 291,
              width: 364,
              child: Image.asset(
                'assets/images/splash.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Text('Right time enjoy tasty food'),
        ],
      ),
    );
  }
}