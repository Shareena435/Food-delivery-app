import 'package:flutter/material.dart';

class Ordercancelled extends StatefulWidget {
  const Ordercancelled({super.key});

  @override
  State<Ordercancelled> createState() => _OrdercancelledState();
}

class _OrdercancelledState extends State<Ordercancelled> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Center(
        child: Text('No Order',
        style: TextStyle(
          fontSize:20 ,
          fontWeight:FontWeight.w600 ,
          color: Color(0xff1C1B1F)
        ),),
      ),
    );
  }
}