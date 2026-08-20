import 'package:flutter/material.dart';
import 'package:mini_project/view/Drawer/Payments/add_card.dart';
import 'package:mini_project/view/Drawer/Payments/paYnow.dart';
import 'package:mini_project/view/Drawer/Payments/payment_successfull.dart';

class Paymentmethod extends StatefulWidget {
  const Paymentmethod({super.key});

  @override
  State<Paymentmethod> createState() => _PaymentmethodState();
}

class _PaymentmethodState extends State<Paymentmethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 24, vertical: 58),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              child: Container(
                // height: 162,
                //width: 24,
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Color(0xffF79C1C),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Payment Method',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 10),
            Text(
              'How Would You Like to make Your payment',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff1C1B1F),
              ),
            ),
            SizedBox(height: 26),
            Row(
              children: [
                Image.asset('assets/images/OIP 1.png', height: 26, width: 26),
                SizedBox(width: 10),
                Text(
                  'Pay With Card',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff1C1B1F),
                  ),
                ),
              ],
            ),
            SizedBox(height: 23),

            Card.outlined(
              child: Container(
                height: 62,
                width: 342,
                color: Color(0xffFFFFFF),
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/Component 12.png',
                    height: 24,
                    width: 24,
                  ),

                  title: Text(
                    'PayPal',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1C1B1F),
                    ),
                  ),
                  subtitle: Text(
                    'Active Payment',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff595A58),
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
            ),
            SizedBox(height: 10),
              Card.outlined(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddCardscreen(),));
                },
                child: Container(
                  height: 62,
                  width: 342,
                  color: Color(0xffFFFFFF),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/Component 12 (3).png',
                      height: 24,
                      width: 24,
                    ),
                
                    title: Text(
                      'Master Card',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff1C1B1F),
                      ),
                    ),
                    subtitle: Text(
                      'Note Active',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff595A58),
                      ),
                    ),
                    trailing: IconButton(onPressed: () {
                      
                    }, icon: Icon(Icons.arrow_forward_ios_rounded))
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
              Card.outlined(
              child: Container(
                height: 62,
                width: 342,
                color: Color(0xffFFFFFF),
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/Component 12 (1).png',
                    height: 24,
                    width: 24,
                  ),

                  title: Text(
                    'Visa',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1C1B1F),
                    ),
                  ),
                  subtitle: Text(
                    'Active Payment',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff595A58),
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
            ),
            SizedBox(height: 10),
              Card.outlined(
              child: Container(
                height: 62,
                width: 342,
                color: Color(0xffFFFFFF),
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/Component 12 (5).png',
                    height: 24,
                    width: 24,
                  ),

                  title: Text(
                    'Bank Transfer',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1C1B1F),
                    ),
                  ),
                  subtitle: Text(
                    'Active Payment',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff595A58),
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
            ),
            SizedBox(height: 10),
              Card.outlined(
              child: Container(
                height: 62,
                width: 342,
                color: Color(0xffFFFFFF),
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/UPI-Black 1.png',
                    height: 24,
                    width: 24,
                  ),

                  title: Text(
                    'Upi',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1C1B1F),
                    ),
                  ),
                  subtitle: Text(
                    'Active Payment',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff595A58),
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
            ),
            SizedBox(height: 10),
              Card.outlined(
              child: Container(
                height: 62,
                width: 342,
                color: Color(0xffFFFFFF),
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/Component 12 (4).png',
                    height: 24,
                    width: 24,
                  ),

                  title: Text(
                    'Cash On Delivery',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1C1B1F),
                    ),
                  ),
                  subtitle: Text(
                    'Pay At Home',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff595A58),
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
            ),
            SizedBox(height: 121),
            Container(
                    
                                height: 49,
                                width: double.infinity,
                        
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                   color: Color(0xffF79C1C),
                                ),
                                
                                child: TextButton(onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Paynowscreen(),));
                                  
                                }, child: Text('Choose Payment Method',
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
