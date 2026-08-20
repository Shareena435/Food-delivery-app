// import 'package:carousel_slider/carousel_options.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:mini_project/view/BottomNavigation/Bottomnavigation.dart';
// import 'package:mini_project/controller/menu_controller.dart';
// import 'package:mini_project/view/BottomNavigation/Favorite/Favorite/Favourit_2.dart';
// import 'package:mini_project/view/BottomNavigation/Homescreen/Updatedprofile.dart';
// //import 'package:mini_project/cartScreen.dart';
// import 'package:mini_project/view/Drawer/drawer.dart';
// import 'package:mini_project/view/get_menu.dart';
// import 'package:mini_project/model/menu_items.dart';
// import 'package:mini_project/view/BottomNavigation/Favorite/Search/searchscreen.dart';
// import 'package:mini_project/view/BottomNavigation/Homescreen/seeAll_page.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// //import 'package:mini_project/favouriteScreeb.dart';
// //import 'package:mini_project/profilescreen.dart';
// //import 'package:mini_project/searchscreen.dart';

// //import 'package:mini_project/controller/menucontroller.dart';
// //import 'package:mini_project/model/menuitems.dart';

// class Homescreen extends StatefulWidget {
//   const Homescreen({super.key});

//   @override
//   State<Homescreen> createState() => _HomescreenState();
// }

// class _HomescreenState extends State<Homescreen> {
  

//   Menucontroller menucontroller=Menucontroller();
//    late final int menuid;
//    Set<int> favoriteIds = {};
//    final FirebaseFirestore firestore = FirebaseFirestore.instance;
// final FirebaseAuth auth = FirebaseAuth.instance;

// Future<void> toggleFavorite(MenuItem item) async {
//   final user = auth.currentUser;

//   if (user == null) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(
//         content: Text('Please login first'),
//       ),
//     );
//     return;
//   }

//   final favoriteRef = firestore
//       .collection('users')
//       .doc(user.uid)
//       .collection('favorites')
//       .doc(item.itemID.toString());

//   final favoriteDoc = await favoriteRef.get();

//   if (favoriteDoc.exists) {
//     // Remove from favorites
//     await favoriteRef.delete();

//     if (mounted) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text('Removed from favourites'),
//         ),
//       );
//     }
//   } else {
//     // Add to favorites
//     await favoriteRef.set({
//       'itemID': item.itemID,
//       'itemName': item.itemName,
//       'itemPrice': item.itemPrice,
//       'imageUrl': item.imageUrl,
//     });

//     if (mounted) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text('Added to favourites'),
//         ),
//       );
//     }
//   }

//   setState(() {});
// }
// Future<bool> isFavorite(int itemID) async {
//   final user = auth.currentUser;

//   if (user == null) {
//     return false;
//   }

//   final doc = await firestore
//       .collection('users')
//       .doc(user.uid)
//       .collection('favorites')
//       .doc(itemID.toString())
//       .get();

//   return doc.exists;
// }
   
   
//   late Future<List<MenuItem>>menufuture;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     menufuture=menucontroller.getproduct();
//   }
//    void gotodetailpage(int id){

//     //opn getproduct screen with  product id
//     Navigator.push(context, MaterialPageRoute(builder:  (context) =>GetMenu(menuid:id) ,));
//   }
//   @override
//   Widget build(BuildContext context) {





// return Scaffold(
//   body: FutureBuilder<List<MenuItem>>(
//     future: menufuture,
//     builder: (context, snapshot) {
//       if (snapshot.connectionState == ConnectionState.waiting) {
//         return const Center(
//           child: CircularProgressIndicator(),
//         );
//       }

//       if (snapshot.hasError) {
//         return Center(
//           child: Text('Error: ${snapshot.error}'),
//         );
//       }

//       if (!snapshot.hasData || snapshot.data!.isEmpty) {
//         return const Center(
//           child: Text('No menu found'),
//         );
//       }

//       final menu = snapshot.data!;

//       return SafeArea(
//         child: Padding(
//           padding:const EdgeInsetsGeometry.only(
//             top: 25,
//             left: 24,
//             right: 24
//           ),
          
//           child: ListView(
//             children: [

//               // AppBar

//               // Search

//               // Banner

//               // Categories


//                 AppBar(
//                   // leading: IconButton(onPressed: () {
                
//                   // }, icon: Icon(Icons.menu)),
//                   leading: DrawerButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => drawerscreen(),
//                         ),
//                       );
//                     },
//                   ),
//                   actions: [
//                     Padding(
//                       padding: EdgeInsetsGeometry.only(right: 7.5),
//                       child: InkWell(
//                         onTap: () {
//                           Navigator.push(context, MaterialPageRoute(builder: (context) => UpdatedDetailScreen(),));
//                         },
//                         child: CircleAvatar(
//                           backgroundImage: AssetImage(
//                             'assets/images/person.png',
//                           ),
//                         ),
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.notifications_none),
//                     ),
//                   ],
//                 ),
                
//                 SizedBox(height: 6),
//                 Text(
//                   'Good Morning , Prabal',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w600,
//                     color: Color(0xff595A58),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 TextFormField(
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => Bottomnavigationscreen(
//                       initialIndex:1
//                     ),));
//                   },
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                     ),
//                     hintText: 'Search for Your favourite, Food',
//                     prefixIcon: IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.search, color: Color(0xff1C1B1F)),
//                     ),
//                     suffixIcon: IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.mic, color: Color(0xff1C1B1F)),
//                     ),
//                     fillColor: Color(0xffDCDCDC),
                
//                     filled: true,
//                   ),
//                 ),
//                 SizedBox(height: 30),
                
     


//    CarouselSlider(
    
//     options: CarouselOptions(
//      height: 153,
    
//      autoPlay: true,
//      enlargeCenterPage: true, 

//    ),
//            items: menu.map((item){
//             return Builder(builder: (context) {
//               return Container(
//                  margin: const EdgeInsets.symmetric(horizontal: 5),
//                  decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: Colors.grey[200],
//                  ),
//                  child: Stack(
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(12),
//                       child: Image.network(
//                         item.imageUrl,
//                         width: double.infinity,
//                         height: double.infinity,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         color: Colors.black.withOpacity(0.4),
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 10,
//                       left: 10,
//                       right: 10,
//                       child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(item.itemName,
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                             ),),
//                             const SizedBox(height: 5,),
//                             Text(
//                              " ₹${item.itemPrice}",
//                               style: const TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.bold
//                               ),
//                             ),
//                             SizedBox(height: 8,),
//                             ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.orange,
//                               ),
//                               onPressed: () {
//                                gotodetailpage(item.itemID!);
//                             }, child: Text('Order  Now',
//                             style: const TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white
//                             ),))
//                           ],
//                     ))
//                   ],
//                  ),
//               );
//             },);
//            }
//            ).toList(),
//    ),






                
//                 SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       'Categories',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w600,
//                         color: Color(0xff1C1B1F),
//                       ),
//                     ),
//                     // 
//                     TextButton(onPressed: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => SeeallPage(),));
//                     }, child:Text(
//                       'see all',
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600,
//                         color: Color(0xff595A58),
//                       ),
//                     ), )
//                   ],
//                 ),
//                 SizedBox(height: 10),
                
               
               
//                   // child: ListView(
//                   //   scrollDirection: Axis.horizontal,
//                   //   children: [
//                   //     Row(
//                   //       children: [
//                   //         Image.asset(
//                   //           'assets/images/Rectangle burger.png',
//                   //           height: 124,
//                   //           width: 123,
//                   //         ),
//                   //         SizedBox(width: 10),
                
//                   //         Image.asset(
//                   //           'assets/images/Rectangle 13 (1).png',
//                   //           height: 124,
//                   //           width: 123,
//                   //         ),
//                   //         SizedBox(width: 10),
                
//                   //         Container(
//                   //           child: Image.asset(
//                   //             'assets/images/fullchicken.png',
//                   //             height: 124,
//                   //             width: 123,
//                   //             fit: BoxFit.cover,
//                   //           ),
//                   //         ),
//                   //       ],
//                   //     ),
//                   //   ],
//                   // ),

//               SizedBox(
//                 height: 124,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: menu.length,
//                   itemBuilder: (context, index) {

//                     final item = menu[index];

                   
//                     return Padding(
//   padding: const EdgeInsets.only(right: 10),
//   child: InkWell(
//     onTap: () {
//         gotodetailpage(item.itemID!);
//     },
//     child: Stack(
      
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(15),
//           child: SizedBox(
//             width: 123,
//             height: 124,
//             child: Image.network(
//               item.imageUrl,
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         Positioned(
//           top: 3,
//           right: 5,
//           child: FutureBuilder<bool>(
//           future: isFavorite(item.itemID!),
//           builder: (context, snapshot) {
//             final isFav = snapshot.data ?? false;
                    
//             return IconButton(
//               onPressed: () async {
//                 await toggleFavorite(item);
//                 setState(() {});
//               },
//               icon: Icon(
                
//                 isFav
//                     ? Icons.favorite
//                     : Icons.favorite_rounded,
//                 size: 20,
//                 color: isFav ? Colors.red : Colors.white,
//               ),
//             );
//           },
//                     ))
//       ],
//     ),
//   ),
// );
//                   },
//                 ),
//               ),
//                SizedBox(height: 7),
                
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         color: Color(0xffEBEBEB),
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                       ),
//                       height: 37,
//                       width: 89,
//                       child: Align(
//                         alignment: AlignmentGeometry.center,
//                         child: Text(
//                           'Breakfast',
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w600,
//                             color: Color(0xff595A58),
//                           ),
//                         ),
//                       ),
//                     ),
//                     // SizedBox(height: 51.5),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: Color(0xffEBEBEB),
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                       ),
//                       height: 37,
//                       width: 89,
//                       child: Align(
//                         alignment: AlignmentGeometry.center,
//                         child: Text(
//                           'Lunch',
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w600,
//                             color: Color(0xff595A58),
//                           ),
//                         ),
//                       ),
//                     ),
//                     // SizedBox(height: 51.5),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: Color(0xffEBEBEB),
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                       ),
//                       height: 37,
//                       width: 89,
//                       child: Align(
//                         alignment: AlignmentGeometry.center,
//                         child: Text(
//                           'Dinner',
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w600,
//                             color: Color(0xff595A58),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
                
//                 SizedBox(height: 20),
//                 Text(
//                   'New Launch',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                     color: Color(0xff1C1B1F),
//                   ),
//                 ),
                
//                 SizedBox(height: 20),

//                 CarouselSlider(
//   options: CarouselOptions(
//     height: 276,
//     viewportFraction: 1,
//     autoPlay: true,
//     enlargeCenterPage: false,
//     autoPlayInterval: Duration(seconds: 3)
//   ),
//   items: menu.map((item) {
//     return InkWell(
//       onTap: () {
//         gotodetailpage(item.itemID!);
//       },
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(12),
        
//         child: Image.network(
//           item.imageUrl,
//           width: 344,
//           height: 276,
//           fit: BoxFit.cover,
//           errorBuilder: (context, error, stackTrace) {
//             return const Center(
//               child: Icon(Icons.broken_image),
//             );
//           },
//         ),
//       ),
//     );
//   }).toList(),
// ),


//               // Remaining widgets...

//             ],
//           ),
//         ),
//       );
//     },
//   ),
// );}}
 
        


import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:mini_project/view/BottomNavigation/Bottomnavigation.dart';
import 'package:mini_project/controller/menu_controller.dart';
import 'package:mini_project/view/BottomNavigation/Homescreen/Updatedprofile.dart';
import 'package:mini_project/view/Drawer/drawer.dart';
import 'package:mini_project/view/get_menu.dart';
import 'package:mini_project/model/menu_items.dart';
import 'package:mini_project/view/BottomNavigation/Homescreen/seeAll_page.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Menucontroller menucontroller = Menucontroller();

  late Future<List<MenuItem>> menufuture;

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;

  Set<int> favoriteIds = {};

  String userName = '';


  Future<void> getUserName() async {
  final user = FirebaseAuth.instance.currentUser;

  if (user == null) return;

  try {
    final doc = await FirebaseFirestore.instance
        .collection('userdetails')
        .doc(user.uid)
        .get();

    if (doc.exists) {
      final data = doc.data();

      if (mounted) {
        setState(() {
          userName = data?['name'] ?? '';
        });
      }
    }
  } catch (e) {
    print('Error getting username: $e');
  }
}

  @override
  void initState() {
    super.initState();

    menufuture = menucontroller.getproduct();

  getUserName();
  }

  // ============================================================
  // FAVORITE
  // ============================================================

  Future<void> toggleFavorite(MenuItem item) async {
    final user = auth.currentUser;

    if (user == null) {
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please login first'),
        ),
      );

      return;
    }

    final favoriteRef = firestore
        .collection('users')
        .doc(user.uid)
        .collection('favorites')
        .doc(item.itemID.toString());

    final favoriteDoc = await favoriteRef.get();

    if (favoriteDoc.exists) {
      // Remove from favorites
      await favoriteRef.delete();

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Removed from favourites'),
          ),
        );
      }
    } else {
      // Add to favorites
      await favoriteRef.set({
        'itemID': item.itemID,
        'itemName': item.itemName,
        'itemPrice': item.itemPrice,
        'imageUrl': item.imageUrl,
      });

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Added to favourites'),
          ),
        );
      }
    }

    if (mounted) {
      setState(() {});
    }
  }

  // ============================================================
  // CHECK FAVORITE
  // ============================================================

  Future<bool> isFavorite(int itemID) async {
    final user = auth.currentUser;

    if (user == null) {
      return false;
    }

    final doc = await firestore
        .collection('users')
        .doc(user.uid)
        .collection('favorites')
        .doc(itemID.toString())
        .get();

    return doc.exists;
  }

  // ============================================================
  // PRODUCT DETAIL
  // ============================================================

  void gotodetailpage(int id) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GetMenu(menuid: id),
      ),
    );
  }

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // ========================================================
      // DRAWER
      // ========================================================

      drawer: const drawerscreen(),

      // ========================================================
      // HOME BODY
      // ========================================================

      body: FutureBuilder<List<MenuItem>>(
        future: menufuture,

        builder: (context, snapshot) {
          // ----------------------------------------------------
          // LOADING
          // ----------------------------------------------------

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          // ----------------------------------------------------
          // ERROR
          // ----------------------------------------------------

          if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
              ),
            );
          }

          // ----------------------------------------------------
          // NO DATA
          // ----------------------------------------------------

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text(
                'No menu found',
              ),
            );
          }

          final menu = snapshot.data!;

          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 24,
                right: 24,
              ),

              child: ListView(
                children: [

                  // ==================================================
                  // APP BAR
                  // ==================================================

                  AppBar(
                    automaticallyImplyLeading: false,

                    elevation: 0,

                    backgroundColor: Colors.transparent,

                    leading: Builder(
                      builder: (context) {
                        return IconButton(
                          icon: const Icon(
                            Icons.menu,
                            color: Color(0xff1C1B1F),
                          ),

                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        );
                      },
                    ),

                    actions: [

                      // PROFILE IMAGE
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 7.5,
                        ),

                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    UpdatedDetailScreen(),
                              ),
                            );
                          },

                          child: const CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/images/person.png',
                            ),
                          ),
                        ),
                      ),

                      // NOTIFICATION
                      IconButton(
                        onPressed: () {},

                        icon: const Icon(
                          Icons.notifications_none,
                          color: Color(0xff1C1B1F),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 6),

                  // ==================================================
                  // GREETING
                  // ==================================================

                  // const Text(
                  //   'Good Morning , Prabal',

                  //   style: TextStyle(
                  //     fontSize: 20,
                  //     fontWeight: FontWeight.w600,
                  //     color: Color(0xff595A58),
                  //   ),
                  // ),

                  Text(
  'Good Morning, ${userName.isEmpty ? 'User' : userName}',
  style: const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Color(0xff595A58),
  ),
),

                  const SizedBox(height: 10),

                  // ==================================================
                  // SEARCH
                  // ==================================================

                  TextFormField(
                    readOnly: true,

                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const Bottomnavigationscreen(
                                initialIndex: 1,
                              ),
                        ),
                      );
                    },

                    decoration: InputDecoration(

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                      hintText:
                          'Search for Your favourite, Food',

                      prefixIcon: IconButton(
                        onPressed: () {},

                        icon: const Icon(
                          Icons.search,
                          color: Color(0xff1C1B1F),
                        ),
                      ),

                      suffixIcon: IconButton(
                        onPressed: () {},

                        icon: const Icon(
                          Icons.mic,
                          color: Color(0xff1C1B1F),
                        ),
                      ),

                      fillColor: const Color(0xffDCDCDC),

                      filled: true,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // ==================================================
                  // FIRST CAROUSEL
                  // ==================================================

                  CarouselSlider(

                    options: CarouselOptions(
                      height: 153,

                      autoPlay: true,

                      enlargeCenterPage: true,
                    ),

                    items: menu.map(
                      (item) {
                        return Builder(
                          builder: (context) {

                            return Container(
                              margin:
                                  const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),

                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(15),

                                color: Colors.grey[200],
                              ),

                              child: Stack(
                                children: [

                                  // IMAGE
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(12),

                                    child: Image.network(
                                      item.imageUrl,

                                      width: double.infinity,

                                      height: double.infinity,

                                      fit: BoxFit.cover,

                                      errorBuilder:
                                          (context, error, stackTrace) {
                                        return const Center(
                                          child: Icon(
                                            Icons.broken_image,
                                          ),
                                        );
                                      },
                                    ),
                                  ),

                                  // DARK OVERLAY
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(12),

                                      color: Colors.black
                                          .withOpacity(0.4),
                                    ),
                                  ),

                                  // TEXT + BUTTON
                                  Positioned(
                                    bottom: 10,
                                    left: 10,
                                    right: 10,

                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,

                                      children: [

                                        Text(
                                          item.itemName,

                                          maxLines: 2,

                                          overflow:
                                              TextOverflow.ellipsis,

                                          style:
                                              const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight:
                                                FontWeight.bold,
                                          ),
                                        ),

                                        const SizedBox(height: 5),

                                        Text(
                                          '₹${item.itemPrice}',

                                          style:
                                              const TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight:
                                                FontWeight.bold,
                                          ),
                                        ),

                                        const SizedBox(height: 8),

                                        ElevatedButton(
                                          style:
                                              ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Colors.orange,
                                          ),

                                          onPressed: () {
                                            gotodetailpage(
                                              item.itemID!,
                                            );
                                          },

                                          child: const Text(
                                            'Order Now',

                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight:
                                                  FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ).toList(),
                  ),

                  const SizedBox(height: 20),

                  // ==================================================
                  // CATEGORIES TITLE
                  // ==================================================

                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,

                    children: [

                      const Text(
                        'Categories',

                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1C1B1F),
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  SeeallPage(),
                            ),
                          );
                        },

                        child: const Text(
                          'see all',

                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff595A58),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  // ==================================================
                  // CATEGORY IMAGES
                  // ==================================================

                  SizedBox(
                    height: 124,

                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,

                      itemCount: menu.length,

                      itemBuilder: (context, index) {

                        final item = menu[index];

                        return Padding(
                          padding:
                              const EdgeInsets.only(right: 10),

                          child: InkWell(
                            onTap: () {
                              gotodetailpage(
                                item.itemID!,
                              );
                            },

                            child: Stack(
                              children: [

                                // IMAGE
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(15),

                                  child: SizedBox(
                                    width: 123,
                                    height: 124,

                                    child: Image.network(
                                      item.imageUrl,

                                      fit: BoxFit.cover,

                                      errorBuilder:
                                          (context, error, stackTrace) {
                                        return const Center(
                                          child: Icon(
                                            Icons.broken_image,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),

                                // FAVORITE BUTTON
                                Positioned(
                                  top: 3,
                                  right: 5,

                                  child: FutureBuilder<bool>(
                                    future: isFavorite(
                                      item.itemID!,
                                    ),

                                    builder:
                                        (context, snapshot) {

                                      final isFav =
                                          snapshot.data ?? false;

                                      return IconButton(
                                        onPressed: () async {

                                          await toggleFavorite(
                                            item,
                                          );

                                          if (mounted) {
                                            setState(() {});
                                          }
                                        },

                                        icon: Icon(

                                          isFav
                                              ? Icons.favorite
                                              : Icons
                                                  .favorite_border,

                                          size: 20,

                                          color: isFav
                                              ? Colors.red
                                              : Colors.white,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 7),

                  // ==================================================
                  // BREAKFAST / LUNCH / DINNER
                  // ==================================================

                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,

                    children: [

                      _categoryButton('Breakfast'),

                      _categoryButton('Lunch'),

                      _categoryButton('Dinner'),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // ==================================================
                  // NEW LAUNCH
                  // ==================================================

                  const Text(
                    'New Launch',

                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1C1B1F),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // ==================================================
                  // NEW LAUNCH CAROUSEL
                  // ==================================================

                  CarouselSlider(

                    options: CarouselOptions(
                      height: 276,

                      viewportFraction: 1,

                      autoPlay: true,

                      enlargeCenterPage: false,

                      autoPlayInterval:
                          const Duration(seconds: 3),
                    ),

                    items: menu.map(
                      (item) {

                        return InkWell(
                          onTap: () {
                            gotodetailpage(
                              item.itemID!,
                            );
                          },

                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(12),

                            child: Image.network(
                              item.imageUrl,

                              width: 344,

                              height: 276,

                              fit: BoxFit.cover,

                              errorBuilder:
                                  (context, error, stackTrace) {

                                return const Center(
                                  child: Icon(
                                    Icons.broken_image,
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // ==============================================================
  // CATEGORY BUTTON
  // ==============================================================

  Widget _categoryButton(String text) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffEBEBEB),

        borderRadius: BorderRadius.circular(10),
      ),

      height: 37,

      width: 89,

      child: Align(
        alignment: Alignment.center,

        child: Text(
          text,

          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff595A58),
          ),
        ),
      ),
    );
  }
}



        
        
        
       
        
        
        
        
        
        
        
        
        