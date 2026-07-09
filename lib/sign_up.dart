import 'package:flutter/material.dart';
import 'package:mini_project/Bottomnavigation.dart';
import 'package:mini_project/forget_password.dart';
import 'package:mini_project/homescreen.dart';
import 'package:mini_project/sign_inpage.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({super.key});

  @override
  State<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {
  TextEditingController namecontroller=TextEditingController();
  bool is_obscuretextOne=false;
  bool is_obscuretextTwo=true;
  bool is_obscuretextThree=true;
  bool num1=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: 43,
              vertical: 54.11
            ),
            child: Image.asset('assets/images/secondpic.png',
                      width: 306,
                      height: 236.82,),
                      
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: 24,
            ),
            child: Column(
            
              children: [
                
                      Text('Sign Up',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff1C1B1F),
                      ),),
                     SizedBox(height: 14,),
                  Container(
                    height: 44,
                    width: double.infinity,
                    child: TextFormField(
                      controller: namecontroller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          
                        ),
                        prefixIcon: Icon(Icons.email_outlined),
                        hintText: 'Full Name',
                        
                        
                      ),
                      
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                  height: 44,
                  width: double.infinity,
                  child: TextFormField(
                    
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        
                      ),
                      prefixIcon: Icon(Icons.lock_open),
                      hintText: 'Email',
                       suffixIcon: IconButton(onPressed: () {
                    setState(() {
                    is_obscuretextOne=!is_obscuretextOne;
          
                  });
                  
                },//con:is_obscuretext==true?Icon(Icons.visibility):Icon(Icons.visibility_off)
              icon:  is_obscuretextOne==false?Icon(Icons.visibility):Icon(Icons.visibility_off)
          
                )
                      
                    ),
                    
                  ),
                ),
                SizedBox(height: 10,)  ,
                Container(
                  height: 44,
                  width: double.infinity,
                  child: TextFormField(
                    
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        
                      ),
                      prefixIcon: Icon(Icons.email_outlined),
                      hintText: 'password',
                           suffixIcon: IconButton(onPressed: () {
                    setState(() {
                    is_obscuretextTwo=!is_obscuretextTwo;
          
                  });
                  
                },//con:is_obscuretext==true?Icon(Icons.visibility):Icon(Icons.visibility_off)
              icon:  is_obscuretextTwo==false?Icon(Icons.visibility_off):Icon(Icons.visibility)
          
                )
                      
                    ),
                    
                  ),
                ),
                SizedBox(height: 10,) ,
                 Container(
                  height: 44,
                  width: double.infinity,
                  child: TextFormField(
                    
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        
                      ),
                      prefixIcon: Icon(Icons.email_outlined),
                      hintText: 'Confirm password',
                           suffixIcon: IconButton(onPressed: () {
                    setState(() {
                    is_obscuretextThree=!is_obscuretextThree;
          
                  });
                  
                },//con:is_obscuretext==true?Icon(Icons.visibility):Icon(Icons.visibility_off)
              icon:  is_obscuretextThree==true?Icon(Icons.visibility):Icon(Icons.visibility_off)
          
                )
                      
                    ),
                    
                  ),
                ),
                SizedBox(height: 17,),
                 Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(title: Text('Remember Password'),
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
                            ))),
                SizedBox(height: 23,),
                
                ],
              ),
               Container(
                height: 49,
                width: 347,
                decoration: BoxDecoration(
                  color: Color(0xffF79C1C),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                
                child: TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Bottomnavigationscreen(),));
                  
                }, child: Text('Sign Up',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffFFFFFF)
                ),),
                ),
              ),
              SizedBox(height: 35,),
           
                 Row(
                children: [
                  Expanded(
                    child: Divider(
                      
                      color: Color(0xff8D8585),
                      endIndent: 10,
                      
                    ),
                    
                  ),
                  Text('Or Login With',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff8D8585)
                  ),),
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
                  Text('Already have an account ?',
                  style: TextStyle(
                    fontSize:14 ,
                    fontWeight:FontWeight.w500 ,
                    color: Color(0xff1C1B1F),
                  ),),
                  InkWell(onTap:
                      () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => sign_inpage(),));
                      }
                  
                    , child: Text(' Sign in',
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
          )
        ],
        
      ),
      



              
                
              
    );
  }
}