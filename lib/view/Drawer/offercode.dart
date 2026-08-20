import 'package:flutter/material.dart';
import 'package:mini_project/view/BottomNavigation/Homescreen/homescreen.dart';

class Offercode extends StatefulWidget {
  const Offercode({super.key});

  @override
  State<Offercode> createState() => _OffercodeState();
}

class _OffercodeState extends State<Offercode> {
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
                child: Container(
                 // height: 162,
                  //width: 24,
                  child:Row(
                    children: [
                      Icon(Icons.arrow_back_ios_new_outlined,
                      color: Color(0xffF79C1C),),
                      SizedBox(width: 10,),
                      Text('Offer Details',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),)
                    ],
                  ) ,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 41,),
              Container(
                width: 346,
                height: 279.63,
                decoration: BoxDecoration(
                    border: BoxBorder.all(
                    color: Color(0xff595A58)
                  ),
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Padding(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal:13 ,
                    vertical: 10
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('   Super Special Offer is Waiting \n            for you on any Order ',
                      
                       style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff1C1B1F)
                            ),),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('40% Off\n  On all\n Our services',
                                 style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff1C1B1F)
                                )),
                                Image.asset('assets/images/amico11.png',
                                height: 143.63,
                                width: 144,)
                              ],
                            ),
                          
                    ],
                  ),
                ),
              ),
                SizedBox(height: 30,),
                            Text('Use this code and get 40% off\n              on any Order',
                             style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff1C1B1F)
                                )),
                                 SizedBox(height: 14,),
                                  Text('Special Promotion on your first order',
                             style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff1C1B1F)
                                )),
                                 SizedBox(height: 14,), 
                                 Text('*Offer End in 5 Days',
                             style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff595A58)
                                )),
                                 SizedBox(height: 30,),
                                  Container(
              height: 49,
              width: double.infinity,
             
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                 color: Color(0xffF79C1C),
              ),
              
              child: TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen(),));
                
              }, child: Text('DONE',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xffFFFFFF)
              ),)),
            ),
            Container(
              height: 21,
              width: 121,
              decoration: BoxDecoration(
                color: Color(0xff85FF8D),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Text('Code:FIFTY50',
              textAlign: TextAlign.center,
               style: TextStyle(
                
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff595A58)
              ),

              ),
            ),
            
              ]))
    );
  }
}