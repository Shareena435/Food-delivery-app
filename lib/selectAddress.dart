import 'package:flutter/material.dart';
import 'package:mini_project/paymentmethod.dart';
//import 'package:mini_project/verified_page.dart';
import 'package:mini_project/verify_address.dart';

class Selectaddress extends StatefulWidget {
  const Selectaddress({super.key});

  @override
  State<Selectaddress> createState() => _SelectaddressState();
}

class _SelectaddressState extends State<Selectaddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: 24,
          vertical: 58,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        Text('Address',
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
                SizedBox(
                  height: 27,
                ),
                 TextFormField(
                                 decoration: InputDecoration(
                  border: OutlineInputBorder(
                
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: 'Search for Your favourite, Food',
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, color: Color(0xff1C1B1F)),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.mic, color: Color(0xff1C1B1F)),
                  ),
                  fillColor: Color(0xffDCDCDC),
                               
                  filled: true,
                                 ),
                               ),
            //  SizedBox(height: 18),

              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    
                                height: 49,
                                width: double.infinity,
                        
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                   color: Color(0xffF79C1C),
                                ),
                                
                                child: TextButton(onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Paymentmethod(),));
                                  
                                }, child: Text('Select Address',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffFFFFFF)
                                ),)),
                       ),
                ],
              )
              
        ],
        

        ),
        
        )
    );
  }
}