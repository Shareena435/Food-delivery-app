import 'package:flutter/material.dart';

class Favourit2 extends StatefulWidget {
  const Favourit2({super.key});

  @override
  State<Favourit2> createState() => _Favourit2State();
}

class _Favourit2State extends State<Favourit2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 23, vertical: 74),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Favourites',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xff1C1B1F),
              ),
            ),
            SizedBox(height: 2),
            Text(
              'Below is a part of Yur Loved Plates',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff1C1B1F),
              ),
            ),
            SizedBox(height: 32),

         Container(
              height: 121,
              width: 345,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xffFFFFFF),
              ),
              child: Card(
                elevation: 10,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/Frame 117.png',
                      height: 100,
                      width: 146,
                    ),
                  Column(
                    children: [
                       Text('Steak',
                                style: TextStyle(
                fontSize:16,
                fontWeight: FontWeight.w600,
                color: Color(0xff1C1B1F)
              ),),
              SizedBox(height: 7,),
                      Text('Slice of Meat',
                            style: TextStyle(
                fontSize:14,
                fontWeight: FontWeight.w500,
                color: Color(0xff595A58)
              ),),
                    ],
                  ),
                   Icon(Icons.paid_outlined,
                                   color: Color(0xffF79C1C),

                                   ),
                   Text('230',
                                    style: TextStyle(
                fontSize:15.95,
                fontWeight: FontWeight.w700,
                color: Color(0xff1C1B1F)
              ),)
                  ],
                  mainAxisAlignment: MainAxisAlignment.end,
                ),
                   
                    
        ),)],
                ),
              ),
    );
  }
}