import 'package:flutter/material.dart';
import 'package:mini_project/Open_email.dart';

class forget_password extends StatefulWidget {
  const forget_password({super.key});

  @override
  State<forget_password> createState() => _forget_passwordState();
}

class _forget_passwordState extends State<forget_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffF7F2F2),
      body: Padding(
        padding:EdgeInsetsGeometry.symmetric(
          horizontal: 24,
          vertical: 83,
        ),
        child: Column(
          children: [
            InkWell(
              child: Container(
               // height: 162,
                //width: 24,
                child:Row(
                  children: [
                    Icon(Icons.arrow_back_ios_new_outlined),
                    Text('Forget Password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),)
                  ],
                ) ,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 67,),
            Image.asset('assets/images/pana.png',
            height: 252.2,
            width: 326,),
            SizedBox(height: 54,),
            Text('Enter your email address associated with \n your account',
            style: TextStyle(
              color: Color(0xff1C1B1F),
              fontSize: 16,
              fontWeight: FontWeight.w600,
              
            ),textAlign: TextAlign.center,),
             SizedBox(height: 14,),
            Text('We will email you a link to reset yourr password',
            style: TextStyle(
              color: Color(0xff8D8585),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            ),
            SizedBox(height: 19,),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(

                ),
                prefixIcon: Icon(Icons.email_outlined),
                hintText: 'Email'
              ),
            ),
            SizedBox(height: 32,),
            Container(
              height:49,
              width: double.infinity,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xffF79C1C),
              ),
              child: TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Onboardingscreen6.openEmail_screen(),));
                
              }, child: Text('Send instruction',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xffFFFFFF)
              ),),
              ),
            )

           
          ],
        ),
      ),
    );
  }
}