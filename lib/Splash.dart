import 'package:flutter/material.dart';
//import 'package:mini_project/Homescreen.dart';
import 'package:mini_project/onbarding1.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => onbardingScreen1(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF79C1C),
       // body: Image.asset('assets/images/splash.png')
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 291,
                width: 364,
              
                child: Image.asset('assets/images/splash.png',
                fit:BoxFit.cover ,)),
            ),
              Text('Right time enjoy tasty food'),
          ],
        ),
    );
  }
}