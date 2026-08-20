// import 'package:flutter/material.dart';
// import 'package:mini_project/view/Drawer/Address/selectAddress.dart';
// import 'package:mini_project/view/Drawer/Orders/My_order.dart';
// import 'package:mini_project/view/Drawer/Address/Newaddress.dart';
// import 'package:mini_project/view/Drawer/Settings/Settingscreen.dart';
// import 'package:mini_project/view/splashscreen/Splash.dart';
// import 'package:mini_project/view/Drawer/TermsAndconditions.dart';
// import 'package:mini_project/view/Drawer/Payments/add_card.dart';
// import 'package:mini_project/view/BottomNavigation/Cart/cartScreen.dart';
// import 'package:mini_project/view/Drawer/favouriteScreeb.dart';
// import 'package:mini_project/view/Drawer/logoutpage.dart';
// import 'package:mini_project/view/Drawer/notificationscreen.dart';
// import 'package:mini_project/view/Drawer/offerscreen.dart';
// import 'package:mini_project/view/Drawer/Payments/payment_method.dart';
// import 'package:mini_project/view/Drawer/profilescreen.dart';
// import 'package:mini_project/view/Drawer/supportscreen.dart';

// class drawerscreen extends StatefulWidget {
//   const drawerscreen({super.key});

//   @override
//   State<drawerscreen> createState() => drawerscreenState();
// }

// class drawerscreenState extends State<drawerscreen> {
// //   List<Map>listdata=[
// //   {'icon':Icons.person_outline_outlined, 'Text':'profile',   'page': Profilescreen()},
// //   //{'icon':Icons.add_location_alt_outlined, 'Text':'Address', 'page': Newaddressscreen()},
// //   {
// //   'icon': Icons.add_location_alt_outlined,
// //   'Text': 'Address',
// //   'page': const Selectaddress(),
// // },
// //   {'icon':Icons.notifications_none_outlined, 'Text':'Notification', 'page':Notificationscreen()
// //    },
// //   {'icon':Icons.attach_money_outlined, 'Text':'Payment', 'page': Paymentmethod()},
// //   {'icon':Icons.add_shopping_cart, 'Text':'Order','page': MyOrder()
// //    },
// //   {'icon':Icons.favorite_outline, 'Text':'Favorite', 'page': Favouritescreen()},
// //   {'icon':Icons.theater_comedy_outlined, 'Text':'Offer', 'page': Offerscreen()},
// //   {'icon':Icons.info_outline, 'Text':'support', 'page': Supportscreen()},
// //   {'icon':Icons.settings_outlined, 'Text':'setting', 'page': Settingscreen()},
// //   {'icon':Icons.quickreply_outlined, 'Text':'Terms & conditions', 'page': Termsandconditions()},
// //   {'icon':Icons.logout, 'Text':'Logout', 'page':splashscreen()},
  
// //   ];

// List<Map> listdata = [
//   {
//     'icon': Icons.person_outline_outlined,
//     'Text': 'profile',
//     'page': Profilescreen(),
//   },
//   {
//     'icon': Icons.add_location_alt_outlined,
//     'Text': 'Address',
//     'page': const Newaddressscreen(
//   isEditing: false,
//   addressData: null,
// )
//   },
//   {
//     'icon': Icons.notifications_none_outlined,
//     'Text': 'Notification',
//     'page': Notificationscreen(),
//   },
//   {
//     'icon': Icons.attach_money_outlined,
//     'Text': 'Payment',
//     'page': Paymentmethod(),
//   },
//   {
//     'icon': Icons.add_shopping_cart,
//     'Text': 'Order',
//     'page': MyOrder(),
//   },
//   {
//     'icon': Icons.favorite_outline,
//     'Text': 'Favorite',
//     'page': Favouritescreen(),
//   },
//   {
//     'icon': Icons.theater_comedy_outlined,
//     'Text': 'Offer',
//     'page': Offerscreen(),
//   },
//   {
//     'icon': Icons.info_outline,
//     'Text': 'support',
//     'page': Supportscreen(),
//   },
//   {
//     'icon': Icons.settings_outlined,
//     'Text': 'setting',
//     'page': Settingscreen(),
//   },
//   {
//     'icon': Icons.quickreply_outlined,
//     'Text': 'Terms & conditions',
//     'page': Termsandconditions(),
//   },
//   {
//     'icon': Icons.logout,
//     'Text': 'Logout',
//     'page': splashscreen(),
//   },
// ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Drawer(
//         child: Padding(
//           padding: EdgeInsetsGeometry.symmetric(
//             horizontal: 24,
//             vertical: 63
//           ),
//           child: ListView(
//             children: [
             

//             IconButton(onPressed: () {
//                 Navigator.pop(context);
//             }, icon: Icon(Icons.close,
//             color: Color(0xffF79C1C),),
//             alignment: Alignment.topLeft),
//             Column(
//               children: [
//                 CircleAvatar(
                  
//                   backgroundImage: AssetImage('assets/images/person.png',
                  
//                   ),
//                   radius: 25,
//                 ),
//                  SizedBox(height: 10,),
//             Text('Prabal',
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w600,
//               color: Color(0xff1C1B1F)
//             ),),
//             Text('prabalp123@gmail.com',
//             style: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w500,
//               color: Color(0xff595A58)
//             )),
//               ],
//             ),
//             SizedBox(height: 12,),
           
//                           ListView.builder(itemBuilder: (context, index) {
                            
//             return ListTile(
            
             
                          
//                  leading: Icon(listdata[index]['icon']),
//                  title:Text(listdata[index]['Text']),
//                  onTap: () {
//                    Navigator.push(context, MaterialPageRoute(builder: (context) => listdata[index]['page'],));
//                  },
//             );
              
                          
//                           },
//                           itemCount: listdata.length,
//                           shrinkWrap: true,
//                          // physics: const NeverScrollableScrollPhysics(),
//                         ),
            
          

            
            
             
//             ],
            
//           ),
//         ),
//       // ),

    
    

     
//     ));
//   }
// }















import 'package:flutter/material.dart';

import 'package:mini_project/view/Drawer/Address/Newaddress.dart';
import 'package:mini_project/view/Drawer/Orders/My_order.dart';
import 'package:mini_project/view/Drawer/Settings/Settingscreen.dart';
import 'package:mini_project/view/Drawer/TermsAndconditions.dart';
import 'package:mini_project/view/Drawer/Payments/payment_method.dart';
import 'package:mini_project/view/Drawer/favouriteScreeb.dart';
import 'package:mini_project/view/Drawer/notificationscreen.dart';
import 'package:mini_project/view/Drawer/offerscreen.dart';
import 'package:mini_project/view/Drawer/profilescreen.dart';
import 'package:mini_project/view/Drawer/supportscreen.dart';
import 'package:mini_project/view/Drawer/logoutpage.dart';

class drawerscreen extends StatefulWidget {
  const drawerscreen({super.key});

  @override
  State<drawerscreen> createState() => drawerscreenState();
}

class drawerscreenState extends State<drawerscreen> {
  List<Map<String, dynamic>> listdata = [
    {
      'icon': Icons.person_outline_outlined,
      'Text': 'Profile',
      'page': Profilescreen(),
    },
    {
      'icon': Icons.add_location_alt_outlined,
      'Text': 'Address',
      'page': const Newaddressscreen(
        isEditing: false,
        addressData: null,
      ),
    },
    {
      'icon': Icons.notifications_none_outlined,
      'Text': 'Notification',
      'page': Notificationscreen(),
    },
    {
      'icon': Icons.attach_money_outlined,
      'Text': 'Payment',
      'page': Paymentmethod(),
    },
    {
      'icon': Icons.add_shopping_cart,
      'Text': 'Order',
      'page': MyOrder(),
    },
    {
      'icon': Icons.favorite_outline,
      'Text': 'Favorite',
      'page': Favouritescreen(),
    },
    {
      'icon': Icons.theater_comedy_outlined,
      'Text': 'Offer',
      'page': Offerscreen(),
    },
    {
      'icon': Icons.info_outline,
      'Text': 'Support',
      'page': Supportscreen(),
    },
    {
      'icon': Icons.settings_outlined,
      'Text': 'Setting',
      'page': Settingscreen(),
    },
    {
      'icon': Icons.quickreply_outlined,
      'Text': 'Terms & Conditions',
      'page': Termsandconditions(),
    },
    {
      'icon': Icons.logout,
      'Text': 'Logout',
      'page': Logoutpage(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.78,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 20,
          ),
          child: ListView(
            children: [
              // =========================
              // CLOSE BUTTON
              // =========================
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Color(0xffF79C1C),
                    size: 28,
                  ),
                ),
              ),

              const SizedBox(height: 5),

              // =========================
              // PROFILE SECTION
              // =========================
              Column(
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(
                      'assets/images/person.png',
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'Prabal',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1C1B1F),
                    ),
                  ),

                  const SizedBox(height: 4),

                  const Text(
                    'prabalp123@gmail.com',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff595A58),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              const Divider(),

              const SizedBox(height: 10),

              // =========================
              // DRAWER MENU
              // =========================
              ListView.builder(
                itemCount: listdata.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),

                    leading: Icon(
                      listdata[index]['icon'],
                      color: const Color(0xff595A58),
                    ),

                    title: Text(
                      listdata[index]['Text'],
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1C1B1F),
                      ),
                    ),

                    onTap: () {
                      // Close drawer first
                      Navigator.pop(context);

                      // Then open selected page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              listdata[index]['page'],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}