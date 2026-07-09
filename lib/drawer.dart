import 'package:flutter/material.dart';
import 'package:mini_project/My_order.dart';
import 'package:mini_project/Newaddress.dart';
import 'package:mini_project/Settingscreen.dart';
import 'package:mini_project/Splash.dart';
import 'package:mini_project/TermsAndconditions.dart';
import 'package:mini_project/add_card.dart';
import 'package:mini_project/cartScreen.dart';
import 'package:mini_project/favouriteScreeb.dart';
import 'package:mini_project/logoutpage.dart';
import 'package:mini_project/notificationscreen.dart';
import 'package:mini_project/offerscreen.dart';
import 'package:mini_project/paymentmethod.dart';
import 'package:mini_project/profilescreen.dart';
import 'package:mini_project/supportscreen.dart';

class drawerscreen extends StatefulWidget {
  const drawerscreen({super.key});

  @override
  State<drawerscreen> createState() => drawerscreenState();
}

class drawerscreenState extends State<drawerscreen> {
  List<Map>listdata=[
  {'icon':Icons.person_outline_outlined, 'Text':'profile',   'page': Profilescreen()},
  {'icon':Icons.add_location_alt_outlined, 'Text':'Address', 'page': Newaddressscreen()},
  {'icon':Icons.notifications_none_outlined, 'Text':'Notification', 'page':Notificationscreen()
   },
  {'icon':Icons.attach_money_outlined, 'Text':'Payment', 'page': Paymentmethod()},
  {'icon':Icons.add_shopping_cart, 'Text':'Order','page': MyOrder()
   },
  {'icon':Icons.favorite_outline, 'Text':'Favorite', 'page': Favouritescreen()},
  {'icon':Icons.theater_comedy_outlined, 'Text':'Offer', 'page': Offerscreen()},
  {'icon':Icons.info_outline, 'Text':'support', 'page': Supportscreen()},
  {'icon':Icons.settings_outlined, 'Text':'setting', 'page': Settingscreen()},
  {'icon':Icons.quickreply_outlined, 'Text':'Terms & conditions', 'page': Termsandconditions()},
  {'icon':Icons.logout, 'Text':'Logout', 'page':splashscreen()},
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 24,
            vertical: 63
          ),
          child: ListView(
            children: [
             

            IconButton(onPressed: () {
                Navigator.pop(context);
            }, icon: Icon(Icons.close,
            color: Color(0xffF79C1C),),
            alignment: Alignment.topLeft),
            Column(
              children: [
                CircleAvatar(
                  
                  backgroundImage: AssetImage('assets/images/person.png',
                  
                  ),
                  radius: 25,
                ),
                 SizedBox(height: 10,),
            Text('Prabal',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff1C1B1F)
            ),),
            Text('prabalp123@gmail.com',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff595A58)
            )),
              ],
            ),
            SizedBox(height: 12,),
           
                          ListView.builder(itemBuilder: (context, index) {
                            
            return ListTile(
            
             
                          
                 leading: Icon(listdata[index]['icon']),
                 title:Text(listdata[index]['Text']),
                 onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => listdata[index]['page'],));
                 },
            );
              
                          
                          },
                          itemCount: listdata.length,
                          shrinkWrap: true,
                         // physics: const NeverScrollableScrollPhysics(),
                        ),
            
          

            
            
             
            ],
            
          ),
        ),
      // ),

    
    

     
    ));
  }
}