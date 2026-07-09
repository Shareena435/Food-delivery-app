import 'package:flutter/material.dart';

class imagescreen extends StatelessWidget {
  const imagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/images/Group 1.jpg'),
    );
  }
}