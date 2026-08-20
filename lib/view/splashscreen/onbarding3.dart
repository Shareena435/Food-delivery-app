import 'package:flutter/material.dart';

import 'package:mini_project/view/Register_pages/sign_inpage.dart';
import 'package:mini_project/widgets/customebutton.dart';
import 'package:shared_preferences/shared_preferences.dart';

class onbardingscreen3 extends StatefulWidget {
  const onbardingscreen3({super.key});

  @override
  State<onbardingscreen3> createState() => _onbardingscreen3State();
}

class _onbardingscreen3State extends State<onbardingscreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color(0xffF7F2F2) ,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            vertical: 66,
            horizontal: 35,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             
             // SizedBox(height: 120,),
              
                
               Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         SizedBox(width: 24),
                         TextButton(
                        //              Navigator.push(context, MaterialPageRoute(builder: (context) => sign_inpage(),));
                        onPressed: () async {
  final prefs = await SharedPreferences.getInstance();

  await prefs.setBool('onboardingCompleted', true);

  if (!context.mounted) return;

  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => const sign_inpage(),
    ),
  );
},
                                    child: Text('Skip',style: TextStyle(
                                     fontSize:16, 
                                     fontWeight: FontWeight.w600,
                                   
                                     letterSpacing: 1,
                                     color: Color(0xff595A58)),
                                     )),
                                      
                       ],
                     ),
              
           
               Center(
                child: Column(
                  children: [
                    Container(
                      height: 292,
                      width: 291,
                      child: Image.asset('assets/images/pic3.png',
                      fit: BoxFit.fill,),
                    ),
                    SizedBox(height: 24,),
                     Text('Happy Dishes With Great\n Express Delivery',
                     style: TextStyle(
                      color: Color(0xff1C1B1F),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                     ),),
                     SizedBox(height: 24,),
                     Text('Fast And Easy Food Delivery From The Best \n Roads Near You',
                     style: TextStyle(
                           color: Color(0xff595A58),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,

                     ),),
                  ],
                ),
              ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    SizedBox(width: 10,),
                    //  Customebutton( child:'Continue' ,  onPressed:() {
                    //   Navigator.push(context, MaterialPageRoute(builder: (context) => sign_inpage(),));
                    //          },
                      
                    //          ),

                    Container(
                           
                            
          height: 51,
          width: 178,


          decoration: BoxDecoration(
            color: Color((0xffF79C1C)),
            borderRadius: BorderRadius.all(Radius.circular(10))


          ),
                      child: TextButton(
                      //   onPressed: () {
                      //   Navigator.push(context, MaterialPageRoute(builder: (context) => sign_inpage(),));
                        
                      // },

                      onPressed: () async {
  final prefs = await SharedPreferences.getInstance();

  await prefs.setBool('onboardingCompleted', true);

  if (!context.mounted) return;

  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => const sign_inpage(),
    ),
  );
},
                       child: Text('Continue',
                        style: TextStyle(
                                         color: Color(0xffFFFFFF), 
                                         fontSize: 24,
                                         fontWeight: FontWeight.w600,
                                     
                                    
                                       ),
                      )),
                    )
                             
                   ],
                 ),
            ],
          ),
        ),
      )
    );
  }
}