import 'package:flutter/material.dart';
import 'package:mini_project/Bottomnavigation.dart';
import 'package:mini_project/homescreen.dart';
import 'package:mini_project/forget_password.dart';
import 'package:mini_project/sign_up.dart';

//import 'package:mini_project/forgotpassword_page.dart';

class sign_inpage extends StatefulWidget {
  const sign_inpage({super.key});

  @override
  State<sign_inpage> createState() => _sign_inpageState();
}

class _sign_inpageState extends State<sign_inpage> {
  bool  is_obscuretext=true;
  TextEditingController mailcontroller=TextEditingController();
  bool num1=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F2F2),
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            vertical: 66,
            horizontal: 24
          ),
          child: Column(
            children: [
              Image.asset('assets/images/rafiki.png',
              width: 345,
              height: 267,),
              SizedBox(height: 39,),
              Text('Sign in',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),),
              SizedBox(height: 14,),
          
              TextFormField(
                controller: mailcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                prefixIcon: Icon (Icons.email_outlined,color: Color(0xff595A58),),
                hintText: 'Email'
              ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                obscureText: is_obscuretext,
                 decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                prefixIcon: Icon (Icons.lock_open,color: Color(0xff595A58),),
                hintText: 'password',
                suffixIcon: IconButton(onPressed: () {
                    setState(() {
                    is_obscuretext=!is_obscuretext;
          
                  });
                  
                },//con:is_obscuretext==true?Icon(Icons.visibility):Icon(Icons.visibility_off)
              icon:  is_obscuretext==false?Icon(Icons.visibility):Icon(Icons.visibility_off)
          
                )
          
              )),
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(title: Text('Remember Password'),
                    enabled: true,
                    
                    contentPadding: EdgeInsets.all(0),
                      value:num1,onChanged: (value) {
                      if (value != null) {
                                 setState(() {
                     num1=value;
                                 });
                                 }
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    
                    ),
                  ),
                     
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  forget_password(),));
                              
                            }, child:Text('Forget Password',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight:FontWeight.w500 ,
                              color: Color(0xff8D8585)
                            ),)),
                ],
              ),
           
               SizedBox(height: 32,),
              Container(
                height: 49,
                width: 347,
                decoration: BoxDecoration(
                  color: Color(0xffF79C1C),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                
                child: TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Bottomnavigationscreen(),));
                  
                }, child: Text('Sign in',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffFFFFFF)
                ),),
                ),
              ),
              SizedBox(height: 32,),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      
                      color: Color(0xff8D8585),
                      
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color(0xff8D8585),
                      indent: 10,
                    ),
                  ),

                ],
              ),
              SizedBox(height: 14,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Image.asset('assets/images/Component 4.png',
                  height: 24,
                  width: 23.5,
                  color: Color(0xff000000),),
                  SizedBox(width: 20,),
                  Image.asset('assets/images/Component 5.png',
                    height: 24,
                  width: 24.15,
                  color: Color(0xff000000)),
                   SizedBox(width: 22.22,),
                  Image.asset('assets/images/Vector.png',
                    height: 24,
                  width: 19.55,
                  color: Color(0xff000000)),
                ],
              ),
              SizedBox(height: 14,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have an account ?',
                  style: TextStyle(
                    fontSize:14 ,
                    fontWeight:FontWeight.w500 ,
                    color: Color(0xff1C1B1F),
                  ),),
                  InkWell(onTap: 
                        () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => signupScreen(),));
                        }
                    , child: Text(' Signup',
                   style: TextStyle(
                    fontSize:14 ,
                    fontWeight:FontWeight.w500 ,
                    color: Color(0xff8D8585),
                  ),
                  )
                  ),
                 
                ],
              ),
              
                
            
            ],
            
          ),
        ),
        
      ),
    
    );
  }
}