import 'package:flutter/material.dart';

class Notificationscreen extends StatefulWidget {
  const Notificationscreen({super.key});

  @override
  State<Notificationscreen> createState() => _NotificationscreenState();
}

class _NotificationscreenState extends State<Notificationscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(
         padding: EdgeInsetsGeometry.symmetric(
          horizontal: 24,
          vertical: 62
         ),
         child: Column(
          children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                 // height: 162,
                  //width: 24,
                  child:Row(
                    children: [
                      Icon(Icons.arrow_back_ios_new_outlined,
                      color: Color(0xffF79C1C),),])))]))
    );
  }
}