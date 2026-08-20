import 'package:flutter/material.dart';
import 'package:mini_project/view/BottomNavigation/Bottomnavigation.dart';
import 'package:mini_project/view/BottomNavigation/Homescreen/homescreen.dart';

class verified_Screen extends StatefulWidget {
  const verified_Screen({super.key});

  @override
  State<verified_Screen> createState() => verified_screen();
}

class verified_screen extends State<verified_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:EdgeInsetsGeometry.symmetric(
          horizontal: 24,
          vertical: 82
        ),
        child: Column(
          children: [
            Image.asset('assets/images/sittingchair.png',
            height:267 ,
            width: 345,),
            SizedBox(height: 53,),
            Text('Verified',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xff1C1B1F)
            ),),
            SizedBox(height: 11,),
            Text('Your Account has been\n verified successfuly',
            style: TextStyle(
              fontSize:14 ,
                fontWeight: FontWeight.w600,
              color: Color(0xff8D8585)
            ),textAlign: TextAlign.center,),
            SizedBox(height: 48,),
            Container(
              height: 49,
              width: double.infinity,
             
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                 color: Color(0xffF79C1C),
              ),
              
              child: TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Bottomnavigationscreen(),));
                
              }, child: Text('Done',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xffFFFFFF)
              ),)),
            )
          ],
        ),
      ),
    );
  }
}