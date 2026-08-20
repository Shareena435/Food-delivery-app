import 'package:flutter/material.dart';
import 'package:mini_project/view/Register_pages/forgot_password/Create_password.dart';
import 'package:mini_project/view/Register_pages/forgot_password/forget_password.dart';
import 'package:pinput/pinput.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController otpcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          vertical: 82,
          horizontal: 24,
        ),
        child: Column(
          children: [
            Image.asset('assets/images/amico.png',
            height: 267,
            width: 345,
            ),
            SizedBox(height: 52,),
            Text('OTP Verification',
            style: TextStyle(
              fontSize:16 ,
              color:Color(0xff1C1B1F) ,
              fontWeight: FontWeight.w600,
            ),),
            SizedBox(height: 11,),
            Text('Enter OTP send to Your email',
             style: TextStyle(
              fontSize:14 ,
              color:Color(0xff8D8585) ,
              fontWeight: FontWeight.w600,
            ),
            ),
            SizedBox(height: 30,),
            Pinput(
              length: 4,
              controller: otpcontroller,
              
              defaultPinTheme: PinTheme(
              

                decoration: BoxDecoration(
                 border: Border.all(color: Color(0xff8D8585),),
                 borderRadius: BorderRadius.circular(10),
                 
                   ),
                   height: 40,
                   width: 40,
              ),
            ),
            SizedBox(height: 58,),
               Container(
              height: 49,
              width: double.infinity,
             
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                 color: Color(0xffF79C1C),
              ),
              
              child: TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => createpasswordscreen(),));
              }, child: Text('Verify',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xffFFFFFF)
              ),)),
            ),
            SizedBox(height: 23,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text( 'Dont receive the OTP?',
                style: TextStyle(
                  fontSize:14 ,
                  fontWeight:FontWeight.w600 ,
                  color: Color(0xff8D8585)
                ),),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => forget_password(),));
                  },
                  child: Text('Resend',
                   style: TextStyle(
                   fontSize:14 ,
                    fontWeight:FontWeight.w600 ,
                    color: Color(0xffF79C1C)
                  )),
                )
                // TextButton(onPressed: () {
                  
                // }, child: Text('Resend',
                //   style: TextStyle(
                //   fontSize:14 ,
                //   fontWeight:FontWeight.w600 ,
                //   color: Color(0xffF79C1C)
                // )))
              ],
            ),
          ],
        ),
      ),
    );
  }
}