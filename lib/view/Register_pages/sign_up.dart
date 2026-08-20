import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/view/BottomNavigation/Bottomnavigation.dart';
import 'package:mini_project/view/Register_pages/forgot_password/forget_password.dart';
//import 'package:mini_project/view/BottomNavigation/Homescreen/homescreen.dart';
import 'package:mini_project/view/Register_pages/sign_inpage.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({super.key});

  @override
  State<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {
  TextEditingController namecontroller=TextEditingController();
   TextEditingController emailcontroller=TextEditingController();
   TextEditingController passwordcontroller=TextEditingController();
  TextEditingController confirmcontroller=TextEditingController();
  
 // bool is_obscuretextOne=false;
  bool is_obscuretextTwo=true;
  bool is_obscuretextThree=true;
  bool num1=true;


  String ?errormessage='';
   bool _isLoading=false;
  // bool num1=false;
    final _formKey = GlobalKey<FormState>();
    
   Future<void>Myregistration()async{
    
    setState(() {
      errormessage=null;
      _isLoading=true;
    });
    try{
      final email=emailcontroller.text.trim();
      final password=passwordcontroller.text.trim();
      if(passwordcontroller.text.trim()==confirmcontroller.text.trim()){
      final credential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      
      final uid=credential.user!.uid;
      
      await FirebaseFirestore.instance.collection('userdetails').doc(uid).set({
        'uid':uid,
        'name':namecontroller.text.trim(),
         'email':emailcontroller.text.trim(),
         
            
      
      });
      }
      //if(confirmcontroller.text.trim().isEmpty){
     
      //   errormessage='Confirm Your Password';
        
      // }
      else{
       setState(() {
         
         errormessage='password do not Match';
       });
       ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('password do not Match'))
       );
       
      }

      
    }on  FormatException {
      setState(() => errormessage = 'Please enter a valid age');
    } catch (e) {
      setState(() => errormessage = e.toString());
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
    

   }
   @override
  void dispose() {
    namecontroller.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
    confirmcontroller.dispose();
  
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: _formKey,
          child: ListView(
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
                         validator: (value) {
                      if (value == null || value.isEmpty) {
                          return 'Name is required';
                          }},
                        controller: namecontroller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            
                          ),
                          prefixIcon: Icon(Icons.person_outline_rounded),
                          hintText: 'Full Name',
                          
                          
                        ),
                        
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                    height: 44,
                    width: double.infinity,
                    child: TextFormField(
                       validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Email is required';
            }
          
            final emailRegex = RegExp(
              r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
            );
          
            if (!emailRegex.hasMatch(value)) {
              return 'Please enter a valid email';
            }
          
            return null;
          },
          
          keyboardType: TextInputType.emailAddress,
                      controller: emailcontroller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          
                        ),
                        prefixIcon: Icon(Icons.email_outlined),
                        hintText: 'Email',
                //          suffixIcon: IconButton(onPressed: () {
                //       setState(() {
                //       is_obscuretextOne=!is_obscuretextOne;
            
                //     });
                    
                //   },//con:is_obscuretext==true?Icon(Icons.visibility):Icon(Icons.visibility_off)
                // icon:  is_obscuretextOne==false?Icon(Icons.visibility):Icon(Icons.visibility_off)
            
                //   )
                        
                      ),
                      
                    ),
                  ),
                  SizedBox(height: 10,)  ,
                  Container(
                    height: 44,
                    width: double.infinity,
                    child: TextFormField(
                       validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Password is required';
            }
          
            if (value.length < 8) {
              return 'Password must be at least 8 characters';
            }
          
            if (!value.contains(RegExp(r'[A-Z]'))) {
              return 'Password must contain at least one uppercase letter';
            }
          
            if (!value.contains(RegExp(r'[0-9]'))) {
              return 'Password must contain at least one number';
            }
          
            return null;
          },
                      controller: passwordcontroller,
                      obscureText: is_obscuretextTwo,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          
                        ),
                        prefixIcon: Icon(Icons.lock_open_rounded),
                        hintText: 'password',
                             suffixIcon: IconButton(onPressed: () {
                      setState(() {
                      is_obscuretextTwo=!is_obscuretextTwo;
            
                    });
                    
                  },//con:is_obscuretext==true?Icon(Icons.visibility):Icon(Icons.visibility_off)
                icon:  is_obscuretextTwo==false?Icon(Icons.visibility):Icon(Icons.visibility_off)
               //  icon:  is_obscuretextTwo==true?Icon(Icons.visibility):Icon(Icons.visibility_off)
            
                  )
                        
                      ),
                      
                    ),
                  ),
                  SizedBox(height: 10,) ,
                   Container(
                    height: 44,
                    width: double.infinity,
                    child: TextFormField(
                      controller: confirmcontroller,
                      obscureText: is_obscuretextThree,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          
                        ),
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                        hintText: 'Confirm password',
                             suffixIcon: IconButton(onPressed: () {
                      setState(() {
                      is_obscuretextThree=!is_obscuretextThree;
            
                    });
                    
                  },//con:is_obscuretext==true?Icon(Icons.visibility):Icon(Icons.visibility_off)
              //  icon:  is_obscuretextThree==true?Icon(Icons.visibility):Icon(Icons.visibility_off)
             icon:  is_obscuretextThree==false?Icon(Icons.visibility):Icon(Icons.visibility_off)
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
  //                 child: TextButton(
  // onPressed: _isLoading
  //     ? null
  //     : () async {
  //         // Validate the form
  //         if (!_formKey.currentState!.validate()) {
  //           print("FORM VALIDATION FAILED");
  //           return;
  //         }

  //         // Try login
  //         final success = await Myregistration();

  //         print("LOGIN RESULT: $success");

  //         if (success && mounted) {
  //           Navigator.pushReplacement(
  //             context,
  //             MaterialPageRoute(
  //               builder: (context) => Bottomnavigationscreen(),
  //             ),
  //           );
  //         }
  //       },

   child: TextButton(onPressed: ()async {
                    if (_formKey.currentState!.validate()) {
                     if(num1==true){
                  
          
                  print('Button Clicked');
                 await Myregistration();
                 print('After registration');
                 print('Error:$errormessage');
                 if(errormessage==null){
                  print('Navigation to loginpage');
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Bottomnavigationscreen(),));
                 }
                    }}
                  
                }, 
                  child: Text('Sign Up',
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
        ),
      



              
                
              
    );
  }
}