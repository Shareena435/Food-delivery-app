import 'package:flutter/material.dart';
import 'package:mini_project/view/splashscreen/onbarding2.dart';
import 'package:mini_project/view/Register_pages/sign_inpage.dart';
//import 'package:mini_project/onbardingscreen2.dart';
//import 'package:mini_project/nextpage.dart';
//import 'package:mini_project/sign_inpage.dart';
import 'package:mini_project/widgets/customebutton.dart';



class onbardingScreen1 extends StatefulWidget {
  const onbardingScreen1({super.key});

  @override
  State<onbardingScreen1> createState() => _onbardingScreen1State();
}

class _onbardingScreen1State extends State<onbardingScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       
      backgroundColor: Color(0xffF7F2F2),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 35,
            vertical: 66,
          
          ),
          child: Column(
            
          // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
          // mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   SizedBox(width: 24),
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
            
           
              
              Container(
                height: 420,
                width: 324,
                child: Image.asset('assets/images/first_home.png',
                fit: BoxFit.fill,),
                
              ),
              
             // SizedBox(height: 100,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                SizedBox(width: 10,),
                 Customebutton( child:'Next' ,  onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => onbardingscreen2(),));
                         },
                  
                         ),
                         
               ],
             ),
            ],
          ),
        ),
      )
    );
  }
}

