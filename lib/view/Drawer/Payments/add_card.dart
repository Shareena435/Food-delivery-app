import 'package:flutter/material.dart';
import 'package:mini_project/view/Drawer/Payments/paYnow.dart';
import 'package:mini_project/view/Drawer/Payments/payment_method.dart';

class AddCardscreen extends StatefulWidget {
  const AddCardscreen({super.key});

  @override
  State<AddCardscreen> createState() => _AddCardscreenState();
}

class _AddCardscreenState extends State<AddCardscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F2F2),
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
              'Add Your New Cards',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff1C1B1F),
              ),
            ),
            SizedBox(height: 35),
            Image.asset('assets/images/Frame 233.png',
            height: 173,
            width: 346,),
             SizedBox(height: 26),
               Text(
              'Card holder Name',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff1C1B1F),
                  
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 55,
              width: 346,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xffFFFFFF),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none
                  
                ),

              ),
            ),
             SizedBox(height: 10),
                Text(
              'Card Number',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff1C1B1F),
                  
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 55,
              width: 346,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xffFFFFFF),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none
                  
                ),

              ),
            ),
             SizedBox(height: 10),
               Row(
                 children: [
                   Container(
                    width: 166,
                    height: 21,
                     child: Text(
                                   'MM/YY',
                                   style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1C1B1F),
                        
                                   ),
                                 ),
                   ),
                               SizedBox(width: 15,),
                                Container(
                                   width: 166,
                    height: 21,
                                  child: Text(
                                   'CVC',
                                   style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500,
                                                      color: Color(0xff1C1B1F),
                                                        
                                   ),
                                                                 ),
                                ),
                 ],
               ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 55,
                  width: 166,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xffFFFFFF),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none
                      
                    ),
                
                  ),
                ),
                  SizedBox(width: 10),
                   Container(
                  height: 55,
                  width: 166,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xffFFFFFF),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none
                      
                    ),
                
                  ),
                ),
              ],
            ),
             SizedBox(height: 55),
              Container(
                    
                                height: 49,
                                width: double.infinity,
                        
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                   color: Color(0xffF79C1C),
                                ),
                                
                                child: TextButton(onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Paynowscreen(),));
                                  
                                }, child: Text('Add Card',
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
