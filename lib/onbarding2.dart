import 'package:flutter/material.dart';
//import 'package:mini_project/continuepage.dart';
import 'package:mini_project/onbarding3.dart';
import 'package:mini_project/sign_inpage.dart';

import 'package:mini_project/widgets/customebutton.dart';

class onbardingscreen2 extends StatefulWidget {
  const onbardingscreen2({super.key});

  @override
  State<onbardingscreen2> createState() => _onbardingscreen2State();
}

class _onbardingscreen2State extends State<onbardingscreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Color(0xffF7F2F2),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 25,
            vertical: 66,
          ),
          child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                   horizontal: 35,
              vertical: 66,
                        
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 24,),
                    TextButton(onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => sign_inpage(),));
                                   }, child: Text('Skip',style: TextStyle(
                                     fontSize:16, 
                                     fontWeight: FontWeight.w600,
                                   
                                     letterSpacing: 1,
                                     color: Color(0xff595A58)),
                                     )),
                  ],
                ),
              ),
            
           //  SizedBox(height: 72,),
              Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 292,
                    width: 291,
                    child: Image.asset('assets/images/secondpic.png',
                    fit: BoxFit.fill,),
                  ),
                  SizedBox(height: 24.8,),
                  Text('Enjoy Tasty & Healthy Food',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                      
                  ),
                  
                  ),
                  SizedBox(height: 24,),
                  Text('We can offer many distictive \n international flavor with a modern touch \nfrom hand of the most skilled chiefs'
                  ,style: TextStyle(
                    color: Color(0xff595A58),
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),),
                
                ],
              ),
              //),
            SizedBox(height: 102,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 10,),
                Customebutton(height: 51, width: 178, child:'Next' , radius: 10, onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => onbardingscreen3(),));
                },
                  
                ),
              ],
            ),
            // Customebutton(child:'Next' , onPressed: () {
              
            // },)
            ],
          ),
        ),
      )
    );
  }
}