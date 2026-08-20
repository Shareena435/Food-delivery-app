import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mini_project/view/BottomNavigation/Bottomnavigation.dart';
import 'package:mini_project/view/BottomNavigation/Homescreen/homescreen.dart';
import 'package:mini_project/view/Register_pages/forgot_password/forget_password.dart';
import 'package:mini_project/view/Register_pages/sign_up.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//import 'package:mini_project/forgotpassword_page.dart';

class sign_inpage extends StatefulWidget {
  const sign_inpage({super.key});

  @override
  State<sign_inpage> createState() => _sign_inpageState();
}

class _sign_inpageState extends State<sign_inpage> {
  bool  is_obscuretext=true;
  TextEditingController mailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  
   String ?errormessage;
   bool _isLoading=false;
   bool num1=false;
    final _formKey = GlobalKey<FormState>();
    final GoogleSignIn _googleSignIn = GoogleSignIn.instance;
    
//    Future<void>mySignin()async{
    
//     setState(() {
//       errormessage=null;
//       _isLoading=true;
//     });
//     try{
//       final email=mailcontroller.text.trim();
//       final password=passwordcontroller.text.trim();
//      // if(passwordcontroller.text.trim()==confirmcontroller.text.trim()){
//       final credential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      
//       final uid=credential.user!.uid;
      
//       await FirebaseFirestore.instance.collection('userdetails').doc(uid).set({
//         'uid':uid,
       
//          'email':mailcontroller.text.trim(),
         
            
      
//       });


// //       String? emailValidator(String? value) {
// //   if (value == null || value.isEmpty) {
// //     return 'Please enter your email';
// //   }

// //   final emailRegex = RegExp(
// //     r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
// //   );

// //   if (!emailRegex.hasMatch(value)) {
// //     return 'Please enter a valid email';
// //   }

// //   return null;
// // }
//      // }
//       //if(confirmcontroller.text.trim().isEmpty){
     
//       //   errormessage='Confirm Your Password';
        
//       // }
//       // else{
//       //  setState(() {
         
//       //    errormessage='password do not Match';
//       //  });
//       //  ScaffoldMessenger.of(context).showSnackBar(
//       //   const SnackBar(content: Text('password do not Match'))
//       //  );
       
//       // }

      
//     }on  FormatException {
//       setState(() => errormessage = 'Please enter a valid age');
//     } catch (e) {
//       setState(() => errormessage = e.toString());
//     } finally {
//       if (mounted) setState(() => _isLoading = false);
//     }
    

Future<bool> mySignin() async {
  setState(() {
    _isLoading = true;
    errormessage = null;
  });

  try {
    final email = mailcontroller.text.trim();
    final password = passwordcontroller.text.trim();

    print("EMAIL: $email");
    print("PASSWORD: $password");

    if (email.isEmpty || password.isEmpty) {
      setState(() {
        errormessage = "Email and password are required";
      });
      return false;
    }

    // SIGN IN — NOT CREATE ACCOUNT
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    print("LOGIN SUCCESSFUL");

    return true;
  } on FirebaseAuthException catch (e) {
    print("Firebase error code: ${e.code}");
    print("Firebase error message: ${e.message}");

    setState(() {
      errormessage = e.message ?? "Login failed";
    });

    return false;
  } catch (e) {
    print("ERROR: $e");

    setState(() {
      errormessage = e.toString();
    });

    return false;
  } finally {
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }
}

// Future<void> signInWithGoogle() async {
//   try {
//     setState(() {
//       _isLoading = true;
//       errormessage = null;
//     });

//     // Open Google account selection
//     final GoogleSignInAccount googleUser =
//         await _googleSignIn.authenticate();

//     // Get Google authentication details
//     final GoogleSignInAuthentication googleAuth =
//         googleUser.authentication;

//     // Create Firebase credential
//     final credential = GoogleAuthProvider.credential(
//       idToken: googleAuth.idToken,
//     );

//     // Sign in to Firebase
//     await FirebaseAuth.instance.signInWithCredential(credential);

//     print("GOOGLE LOGIN SUCCESSFUL");
//     print("Google email: ${googleUser.email}");

//     if (mounted) {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (context) => Bottomnavigationscreen(),
//         ),
//       );
//     }
//   } on GoogleSignInException catch (e) {
//     print("Google Sign-In error: ${e.code}");
//     print("Google Sign-In description: ${e.description}");

//     if (mounted) {
//       setState(() {
//         errormessage = "Google Sign-In failed";
//       });
//     }
//   } on FirebaseAuthException catch (e) {
//     print("Firebase Google error: ${e.code}");
//     print("Firebase Google message: ${e.message}");

//     if (mounted) {
//       setState(() {
//         errormessage = e.message ?? "Google Sign-In failed";
//       });
//     }
//   } catch (e) {
//     print("Google Sign-In error: $e");

//     if (mounted) {
//       setState(() {
//         errormessage = "Google Sign-In failed";
//       });
//     }
//   } finally {
//     if (mounted) {
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }
// }


// Future<void> signinWithGoogle() async {
//   if (_isLoading) return;

//   setState(() {
//     _isLoading = true;
//     errormessage = '';
//   });

//   try {
//     UserCredential userCredential;

//     // =========================
//     // WEB
//     // =========================
//     if (kIsWeb) {
//       final GoogleAuthProvider googleProvider = GoogleAuthProvider();

//       googleProvider.addScope(
//         'https://www.googleapis.com/auth/userinfo.profile',
//       );

//       userCredential = await FirebaseAuth.instance.signInWithPopup(
//         googleProvider,
//       );
//     }

//     // =========================
//     // ANDROID / IOS
//     // =========================
//     else {
//       final GoogleSignInAccount googleUser =
//           await GoogleSignIn.instance.authenticate();

//       final GoogleSignInAuthentication googleAuth =
//           googleUser.authentication;

//       final OAuthCredential credential =
//           GoogleAuthProvider.credential(
//         idToken: googleAuth.idToken,
//       );

//       userCredential =
//           await FirebaseAuth.instance.signInWithCredential(credential);
//     }

//     // =========================
//     // FIREBASE USER
//     // =========================

//     final User? user = userCredential.user;

//     if (user != null) {
//       await FirebaseFirestore.instance
//           .collection('userdetails')
//           .doc(user.uid)
//           .set(
//         {
//           'uid': user.uid,
//           'name': user.displayName ?? '',
//           'email': user.email ?? '',
//           'photoUrl': user.photoURL ?? '',
//           'logintype': 'Google',
//         },
//         SetOptions(merge: true),
//       );

//       print('Google login successful');
//       print('UID: ${user.uid}');
//       print('Name: ${user.displayName}');
//       print('Email: ${user.email}');
//     }
//   } on FirebaseAuthException catch (e) {
//     setState(() {
//       errormessage = e.message ?? 'Google sign-in failed';
//     });

//     print('Firebase Auth Error: ${e.code}');
//     print('Message: ${e.message}');
//   } on GoogleSignInException catch (e) {
//     if (e.code == GoogleSignInExceptionCode.canceled) {
//       setState(() {
//         errormessage = 'Google sign-in cancelled';
//       });
//     } else {
//       setState(() {
//         errormessage =
//             e.description ?? 'Google sign-in failed';
//       });
//     }

//     print('Google Sign-In Error: ${e.code}');
//     print('Description: ${e.description}');
//   } catch (e) {
//     setState(() {
//       errormessage = 'Something went wrong: $e';
//     });

//     print('Unknown Error: $e');
//   } finally {
//     if (mounted) {
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }
// }

//final GoogleSignIn _googleSignIn = GoogleSignIn.instance;

@override
void initState() {
  super.initState();
  initializeGoogleSignIn();
}

Future<void> initializeGoogleSignIn() async {
  try {
    await _googleSignIn.initialize();

    debugPrint('Google Sign-In initialized successfully');
  } catch (e) {
    debugPrint('Google Sign-In initialization error: $e');
  }
}

Future<void> signinWithGoogle() async {
  if (_isLoading) return;

  if (mounted) {
    setState(() {
      _isLoading = true;
      errormessage = '';
    });
  }

  try {
    UserCredential userCredential;

    // =========================
    // WEB
    // =========================
    if (kIsWeb) {
      final GoogleAuthProvider googleProvider =
          GoogleAuthProvider();

      googleProvider.addScope(
        'https://www.googleapis.com/auth/userinfo.profile',
      );

      userCredential =
          await FirebaseAuth.instance.signInWithPopup(
        googleProvider,
      );
    }

    // =========================
    // ANDROID / IOS
    // =========================
    else {
      final GoogleSignInAccount googleUser =
          await _googleSignIn.authenticate();

      final GoogleSignInAuthentication googleAuth =
          googleUser.authentication;

      if (googleAuth.idToken == null) {
        throw Exception(
          'Google ID token is null. Check Firebase/Google configuration.',
        );
      }

      final OAuthCredential credential =
          GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
      );

      userCredential =
          await FirebaseAuth.instance.signInWithCredential(
        credential,
      );
    }

    // =========================
    // FIREBASE USER
    // =========================

    final User? user = userCredential.user;

    if (user == null) {
      throw Exception('Firebase user is null');
    }

    debugPrint('============================');
    debugPrint('GOOGLE LOGIN SUCCESSFUL');
    debugPrint('UID: ${user.uid}');
    debugPrint('NAME: ${user.displayName}');
    debugPrint('EMAIL: ${user.email}');
    debugPrint('PHOTO: ${user.photoURL}');
    debugPrint('============================');

    // =========================
    // SAVE USER TO FIRESTORE
    // =========================

    await FirebaseFirestore.instance
        .collection('userdetails')
        .doc(user.uid)
        .set(
      {
        'uid': user.uid,
        'name': user.displayName ?? '',
        'email': user.email ?? '',
        'phone': user.phoneNumber ?? '',
        'photoUrl': user.photoURL ?? '',
        'age': '',
        'education': '',
        'logintype': 'Google',
        'updatedAt': FieldValue.serverTimestamp(),
      },
      SetOptions(merge: true),
    );

    debugPrint('User details saved to Firestore');

    // =========================
    // NAVIGATION
    // =========================

    if (!mounted) return;

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) =>
            Bottomnavigationscreen(),
      ),
      (route) => false,
    );
  }

  // =========================
  // FIREBASE ERROR
  // =========================

  on FirebaseAuthException catch (e) {
    debugPrint('Firebase Auth Error: ${e.code}');
    debugPrint('Firebase Auth Message: ${e.message}');

    if (!mounted) return;

    setState(() {
      errormessage =
          e.message ?? 'Google sign-in failed';
    });
  }

  // =========================
  // GOOGLE SIGN-IN ERROR
  // =========================

  on GoogleSignInException catch (e) {
    debugPrint('Google Sign-In Error: ${e.code}');
    debugPrint('Description: ${e.description}');

    if (!mounted) return;

    if (e.code ==
        GoogleSignInExceptionCode.canceled) {
      setState(() {
        errormessage =
            'Google sign-in cancelled';
      });
    } else {
      setState(() {
        errormessage =
            e.description ??
                'Google sign-in failed';
                });
    }
  }

  // =========================
  // OTHER ERROR
  // =========================

  catch (e) {
    debugPrint('Google Sign-In Unknown Error: $e');

    if (!mounted) return;

    setState(() {
      errormessage =
          'Something went wrong: $e';
    });
  }

  // =========================
  // LOADING
  // =========================

  finally {
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }
}
  Future<void> login() async {
    setState(() {
     _isLoading  = true;
      errormessage = '';
    });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: mailcontroller.text.trim(),
        password: passwordcontroller.text.trim(),
      );

      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Homescreen(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      String message = '';

      if (e.code == 'user-not-found') {
        message = 'No user found with this email';
      } else if (e.code == 'wrong-password') {
        message = 'Wrong password';
      } else if (e.code == 'invalid-email') {
        message = 'Invalid email address';
      } else if (e.code == 'invalid-credential') {
        message = 'Wrong email or password';
      } else if (e.code == 'user-disabled') {
        message = 'This user account is disabled';
      } else {
        message = 'Login failed. Please try again';
      }

      if (!mounted) return;

      setState(() {
        errormessage = message;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
    } catch (e) {
      if (!mounted) return;

      setState(() {
        errormessage = 'Something went wrong';
      });
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }
   @override
  void dispose() {
  
    mailcontroller.dispose();
    passwordcontroller.dispose();
   
    super.dispose();
  }
// @override
// void initState() {
//   super.initState();
//   initializeGoogleSignIn();
// }
// Future<void> initializeGoogleSignIn() async {
//   try {
//     await _googleSignIn.initialize();
//     print("GOOGLE INITIALIZATION SUCCESSFUL");
//   } catch (e) {
//     print("GOOGLE INITIALIZATION ERROR: $e");
//   }
// }
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
          child: Form(
            key: _formKey,
            child: ListView(
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
                  //  validator: (value) {
                  //     if (value == null || value.isEmpty) {
                  //         return 'Email is required';
                  //         }
                          
                  // final emailRegex = RegExp(
                  //   r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                  // );
                
                  // if (!emailRegex.hasMatch(value)) {
                  //   return 'Please enter a valid email';
                  // }
                
                  // return null;
                  //         },
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
                  controller: passwordcontroller,
                  obscureText: is_obscuretext,
                  
                  
                  //  validator: (value) {
                  //     if (value == null || value.isEmpty) {
                  //         return 'Password is required';
                  //       }
                  //       if (value.length < 8) {
                  //         return 'Password must be at least 8 characters';
                  //       }
                  //       if (!value.contains(RegExp(r'[A-Z]'))) {
                  //         return 'Password must contain at least one uppercase letter';
                  //       }
                  //       if (!value.contains(RegExp(r'[0-9]'))) {
                  //         return 'Password must contain at least one number';
                  //       }
                            
                  //   },
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
                  
                  // child: TextButton(onPressed: () {
                  //   Navigator.push(context, MaterialPageRoute(builder: (context) => Bottomnavigationscreen(),));
                    
                  // }, 
            
                //      child: TextButton(onPressed:_isLoading?null: () async{
            
                  
                //   await mySignin();
                // if(errormessage==null){
                //   Navigator.push(context, MaterialPageRoute(builder: (context) => Bottomnavigationscreen(),));
                 
                // }
             
            
                //   print(mailcontroller.text);
                //   print(errormessage);
                  
                // },
                //   child: Text('Sign in',
                //   style: TextStyle(
                //     fontSize: 24,
                //     fontWeight: FontWeight.w600,
                //     color: Color(0xffFFFFFF)
                //   ),),
                //   ),


                child: TextButton(
  onPressed: _isLoading
      ? null
      : () async {
          // Validate the form
          if (!_formKey.currentState!.validate()) {
            print("FORM VALIDATION FAILED");
            return;
          }

          // Try login
          final success = await mySignin();

          print("LOGIN RESULT: $success");

          if (success && mounted) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const Bottomnavigationscreen(),
              ),
              (route)=>false,
            );
          
          }
        },
  child: Text(
    'Sign in',
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  ),
)
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
                    
                    // Image.asset('assets/images/Component 4.png',
                    // height: 24,
                    // width: 23.5,
                    //color: Color(0xff000000),),
                    InkWell(
  onTap: _isLoading ? null: signinWithGoogle,

  child: Container(
    child: Image.asset(
      'assets/images/Component 4.png',
      height: 24,
      width: 23.5,
    ),
  ),
),
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
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => signupScreen(),));
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
        
      ),
    
    );
  }
}