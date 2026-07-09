
import 'package:flutter/material.dart';
import 'package:mini_project/ActiveOrder.dart';
import 'package:mini_project/Bottomnavigation.dart';
import 'package:mini_project/Laungage.dart';
import 'package:mini_project/My_order.dart';
import 'package:mini_project/Newaddress.dart';
import 'package:mini_project/Settingscreen.dart';
import 'package:mini_project/Splash.dart';
import 'package:mini_project/TermsAndconditions.dart';
import 'package:mini_project/add_card.dart';
import 'package:mini_project/cartScreen.dart';
import 'package:mini_project/drawer.dart';
import 'package:mini_project/favouriteScreeb.dart';
import 'package:mini_project/homescreen.dart';
import 'package:mini_project/notificationscreen.dart';
import 'package:mini_project/offercode.dart';
import 'package:mini_project/offerscreen.dart';
import 'package:mini_project/onbarding3.dart';
import 'package:mini_project/orderCompleted.dart';
import 'package:mini_project/payment_successfull.dart';
import 'package:mini_project/paymentmethod.dart';
import 'package:mini_project/profilescreen.dart';
import 'package:mini_project/searchscreen.dart';
import 'package:mini_project/selectAddress.dart';

import 'package:mini_project/sign_inpage.dart';
import 'package:mini_project/Open_email.dart';
import 'package:mini_project/Create_password.dart';
import 'package:mini_project/sign_up.dart';
import 'package:mini_project/supportscreen.dart';
import 'package:mini_project/verified_page.dart';
import 'package:mini_project/otp_page.dart';
import 'package:mini_project/verify_address.dart';






void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter miniproject',
      theme: ThemeData(
        
        //colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home:splashscreen(

      )
      
    );
  }
}


  

  
  
 