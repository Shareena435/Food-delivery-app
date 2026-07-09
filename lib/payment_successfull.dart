import 'package:flutter/material.dart';
import 'package:mini_project/My_order.dart';
import 'package:mini_project/cartScreen.dart';

class PaymentSuccessfull extends StatefulWidget {
  const PaymentSuccessfull({super.key});

  @override
  State<PaymentSuccessfull> createState() => _PaymentSuccessfullState();
}

class _PaymentSuccessfullState extends State<PaymentSuccessfull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          vertical: 123,
          horizontal: 24,
        ),
        child: Column(
          children: [
            Image.asset('assets/images/sceessfull.png',
            height:268.26 ,
            width:300 ,),
           
            SizedBox(height: 20,),
             Text('Payment Successful',
             style: TextStyle(
              fontSize: 20,
              fontWeight:FontWeight.w600 ,
              color: Color(0xff1C1B1F),
             ),
             ),
             SizedBox(height: 16,),
             Text('Your order is Being prosessed',
             style: TextStyle(
              fontSize: 16,
              fontWeight:FontWeight.w500 ,
              color: Color(0xff595A58),
             ),),
             Text('please Check Your Notification, We\njust Sent You A Message',
               style: TextStyle(
              fontSize: 14,
              fontWeight:FontWeight.w500 ,
              color: Color(0xff595A58),
             ),
             ),
             SizedBox(height: 62,),
              Container(
                    
                                height: 49,
                                width: double.infinity,
                        
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                   color: Color(0xffF79C1C),
                                ),
                                
                                child: TextButton(onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>MyOrder(),));
                                  
                                }, child: Text('Done',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffFFFFFF)
                                ),)),
                       ),
          ],
        ),
      ),
    );
  }
}