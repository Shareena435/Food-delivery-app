
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mini_project/newpage.dart';
import 'package:mini_project/view/splashscreen/onbarding1.dart';

import 'firebase_options.dart';
//import 'package:mini_project/ActiveOrder.dart';
import 'package:mini_project/view/BottomNavigation/Bottomnavigation.dart';
import 'package:mini_project/view/Drawer/Settings/Laungage.dart';
import 'package:mini_project/view/Drawer/Orders/My_order.dart';
import 'package:mini_project/view/Drawer/Address/Newaddress.dart';
import 'package:mini_project/view/Drawer/Settings/Settingscreen.dart';
import 'package:mini_project/view/splashscreen/Splash.dart';
import 'package:mini_project/view/Drawer/TermsAndconditions.dart';
import 'package:mini_project/view/Drawer/Payments/add_card.dart';
import 'package:mini_project/view/BottomNavigation/Cart/cartScreen.dart';
import 'package:mini_project/view/Drawer/drawer.dart';
import 'package:mini_project/view/Drawer/favouriteScreeb.dart';
import 'package:mini_project/view/BottomNavigation/Homescreen/homescreen.dart';
import 'package:mini_project/view/Drawer/notificationscreen.dart';
import 'package:mini_project/view/Drawer/offercode.dart';
import 'package:mini_project/view/Drawer/offerscreen.dart';
import 'package:mini_project/view/splashscreen/onbarding3.dart';
import 'package:mini_project/view/Drawer/Orders/order_completed.dart';
import 'package:mini_project/view/Drawer/Payments/payment_successfull.dart';
import 'package:mini_project/view/Drawer/Payments/payment_method.dart';
import 'package:mini_project/view/Drawer/profilescreen.dart';
import 'package:mini_project/view/BottomNavigation/Favorite/Search/searchscreen.dart';
import 'package:mini_project/view/Drawer/Address/selectAddress.dart';

import 'package:mini_project/view/Register_pages/sign_inpage.dart';
import 'package:mini_project/view/Register_pages/forgot_password/Open_email.dart';
import 'package:mini_project/view/Register_pages/forgot_password/Create_password.dart';
import 'package:mini_project/view/Register_pages/sign_up.dart';
import 'package:mini_project/view/Drawer/supportscreen.dart';
import 'package:mini_project/view/Register_pages/forgot_password/verified_page.dart';
import 'package:mini_project/view/Register_pages/forgot_password/otp_page.dart';
import 'package:mini_project/view/Drawer/Address/verify_address.dart';






Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
   // options: DefaultFirebaseOptions.currentPlatform,

  );
  
  await GoogleSignIn.instance.initialize(serverClientId: '1:363386000872:android:abb7261c602c60e260c05d.apps.googleusercontent.com');
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
      home:Bottomnavigationscreen()
      
    );
  }
}


  

  
  
 