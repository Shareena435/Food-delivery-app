import 'package:flutter/material.dart';
import 'package:mini_project/otp_page.dart';
import 'package:mini_project/sign_inpage.dart';
import 'package:mini_project/Create_password.dart';
import 'package:mini_project/verified_page.dart';

class Onboardingscreen6 extends StatefulWidget {
  const Onboardingscreen6.openEmail_screen({super.key});

  @override
  State<Onboardingscreen6> createState() => _Onboardingscreen6State();
}

class _Onboardingscreen6State extends State<Onboardingscreen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(
         padding: EdgeInsetsGeometry.symmetric(
          horizontal: 24,
          vertical: 82,
         ),
         child: Column(
          children: [
            Image.asset('assets/images/cuate.png',
            height:267 ,
            width: 345,),
            SizedBox(height: 39,),
            Text('Check Your Email Address',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff1C1B1F),
              
            ),),
            SizedBox(height: 14,),
            Text('We have send a password recover instruction to\n your email',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xff8D8585)
            ),
            textAlign: TextAlign.center,),
            SizedBox(height: 46,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                   color: Color(0xffF79C1C),
              ),
              height:49 ,
              width: double.infinity,
           
              child: TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => OtpPage(),));
                
              }, child: Text('Open Your Email',
              style: TextStyle(
                fontSize: 24,
                
              fontWeight: FontWeight.w600,
                color: Color(0xffFFFFFF)
              ),)),
            ),
            SizedBox(height: 19,),
            InkWell(
              child: Text('Skip i will confirm Later',
              
              style: TextStyle(
                fontSize: 14,
                   fontWeight: FontWeight.w600,
                color: Color(0xff8D8585)
              ),),
              onTap: () {
              
              },
            ),
            SizedBox(height: 61,),
            Text('Do not receive the email? check your spam filter'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('or '),
                 InkWell(child: Text('trying another email address',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xffF79C1C)
            ),),
            onTap: () {
             
            },)
              ],
            ),
           
          ],
         ),
       ),
    );
  }
}