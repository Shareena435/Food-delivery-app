import 'package:flutter/material.dart';
import 'package:mini_project/Bottomnavigation.dart';
import 'package:mini_project/homescreen.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  TextEditingController namecontroller=TextEditingController();
   TextEditingController emailcontroller=TextEditingController();
  bool obscureText2=true;
   TextEditingController phonecontroller=TextEditingController();
  

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
                      Text('profile',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),)
                    ],
                  ) ,
                ),
                onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Bottomnavigationscreen(),));
                },
              ),
              SizedBox(height: 24.5,),
              CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage('assets/images/person.png'),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 70,
                      left: 100,
                      child: Icon(Icons.photo_camera_outlined,
                      color: Color(0xffF79C1C),))
                  ],
                ),
              ),
              SizedBox(height: 56,),
              Container(
                height: 44,
                width: 346,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: TextFormField(
                  controller: namecontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      
                    ),
                    prefixIcon: Icon(Icons.person_outline_outlined),
                    hintText: 'Prabal'
                  ),
                ),
              ),
              SizedBox(height:10,),
                Container(
                height: 44,
                width: 346,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: TextFormField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      
                    ),
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Email',
                 

                  ),
                ),
              ),
              SizedBox(height:10,),
                Container(
                height: 44,
                width: 346,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: TextFormField(
                  obscureText: obscureText2,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      
                    ),
                    prefixIcon: Icon(Icons.lock_open_outlined),
                    hintText: 'Password',
                       suffixIcon: IconButton(onPressed: () {
                  setState(() {
                    obscureText2=!obscureText2;

                  });
                  
                }, icon: obscureText2==true?Icon(Icons.visibility):Icon(Icons.visibility_off)
)
                  ),
                ),
              ),
              SizedBox(height:10,),
                Container(
                height: 44,
                width: 346,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: TextFormField(
                  controller: phonecontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      
                    ),
                    prefixIcon: Icon(Icons.lock_open_outlined),
                    hintText: 'Phone number'
                  ),
                  
                ),
              ),
              SizedBox(height:56,),
                  Container(
              height: 49,
              width: double.infinity,
             
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                 color: Color(0xffF79C1C),
              ),
              
              child: TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Bottomnavigationscreen(),));
                
              }, child: Text('Save',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xffFFFFFF)
              ),)),
            )
            

          ],
         ),
       ),
    );
  }
}