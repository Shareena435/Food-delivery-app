import 'package:flutter/material.dart';

class Customebutton extends StatelessWidget {
  double ? height;
  double ? width;
  double ?radius;
  String child;
  VoidCallback ?onPressed; 
  
   Customebutton({ this.height,this.width , required this.child,
  this.radius,  this.onPressed});
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: 
        onPressed,
      child: Container(
          height: height??51,
          width: width??178,


          decoration: BoxDecoration(
            color: Color((0xffF79C1C)),
            borderRadius: BorderRadius.all(Radius.circular(radius??10))


          ),
        
        child: Padding(
          padding: EdgeInsetsGeometry.only(
            top: 11,
            right: 60,
            bottom: 11,
            left: 60,
          ),
          child: Text(child,
          style: TextStyle(
               color: Color(0xffFFFFFF), 
               fontSize: 24,
               
              
          ),
                
          ),
        ),
       
      ),
      
    );
  }
}