// import 'package:flutter/material.dart';
// import 'package:mini_project/view/Drawer/Address/selectAddress.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class Newaddressscreen extends StatefulWidget {
  
//  final bool isEditing;
//   final Map<String, dynamic>? addressData;
//   const Newaddressscreen({super.key,
//     this.isEditing = false,
//     this.addressData,});

//   @override
//   State<Newaddressscreen> createState() => _NewaddressscreenState();
// }

// class _NewaddressscreenState extends State<Newaddressscreen> {
//   TextEditingController namecontroller=TextEditingController();
//    TextEditingController flateNumcontroller=TextEditingController();
//     TextEditingController floorNumcontroller=TextEditingController();
//      // ignore: non_constant_identifier_names
//      TextEditingController Buildingnamecontroller=TextEditingController();
//       TextEditingController phonenumcontroller=TextEditingController();
//        final _formKey = GlobalKey<FormState>();
//        String selectedAddressType = 'House';

//        @override
// void initState() {
//   super.initState();

//   if (widget.isEditing && widget.addressData != null) {
//     final data = widget.addressData!;

//     namecontroller.text = data['fullName'] ?? '';
//     flateNumcontroller.text = data['flatNumber'] ?? '';
//     floorNumcontroller.text = data['floorNumber'] ?? '';
//     Buildingnamecontroller.text = data['buildingName'] ?? '';
//     phonenumcontroller.text = data['contactNumber'] ?? '';

//     selectedAddressType =
//         data['addressType'] ?? 'House';
//   }
// }
       
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       body: Form(
//         key: _formKey,
//         child: DefaultTabController(length: 3, child: 
//         Padding(
//           padding: EdgeInsetsGeometry.symmetric(
//             horizontal: 24,
//             vertical: 58,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//                  InkWell(
//                     child: Container(
//                      // height: 162,
//                       //width: 24,
//                       child:Row(
//                         children: [
//                           Icon(Icons.arrow_back_ios_new_outlined,
//                           color: Color(0xffF79C1C),),
//                           SizedBox(width: 10,),
//                           Text('Add New Address',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.w600,
//                           ),)
//                         ],
//                       ) ,
//                     ),
//                     onTap: () {
//                       Navigator.pop(context);
//                     },
//                   ),
//                   SizedBox(
//                     height: 17,
//                   ),
//                   Image.asset('assets/images/Frame 202.png',
//                   width: 345,
//                   height: 129,),
//                    SizedBox(
//                     height: 10,
//                   ),
//                   Text('Address Type',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                             color: Color(0xff595A58),
//                           ),),
//                             SizedBox(
//                     height: 10,
//                   ),
        
//           //        TabBar(tabs: [
//           //         Container(
        
//           //           height: 41,
//           //           width: 105,
//           //           decoration: BoxDecoration(
//           //             borderRadius: BorderRadius.all(Radius.circular(10)),
//           //             color: Color(0xffDFDFDF)
//           //           ),
//           //           child: Align(alignment: AlignmentGeometry.center,child: Text('House',
//           //           style: TextStyle(
//           //                   fontSize: 14,
//           //                   fontWeight: FontWeight.w500,
//           //                  // color: Color(0xff8D8585),
//           //                 ),),
//           //           ),
//           //         ),
//           //       //  SizedBox(height: 15,),
//           //          Container(
//           //           height: 41,
//           //           width: 105,
//           //           decoration: BoxDecoration(
//           //             borderRadius: BorderRadius.all(Radius.circular(10)),
//           //             color: Color(0xffDFDFDF)
//           //           ),
//           //           child: Align(alignment: AlignmentGeometry.center,child: Text('Office',
//           //           style: TextStyle(
//           //                   fontSize: 14,
//           //                   fontWeight: FontWeight.w500,
//           //                   //color: Color(0xff8D8585),
//           //                 ),),
//           //           ),
//           //         ),
//           //       //  SizedBox(height: 15,),
//           //          Container(
//           //           height: 41,
//           //           width: 105,
//           //           decoration: BoxDecoration(
//           //             borderRadius: BorderRadius.all(Radius.circular(10)),
//           //             color: Color(0xffDFDFDF)
//           //           ),
//           //           child: Align(alignment: AlignmentGeometry.center,child: Text('Other',
//           //           style: TextStyle(
//           //                   fontSize: 14,
//           //                   fontWeight: FontWeight.w500,
//           //                   //color: Color(0xff8D8585),
//           //                 ),),
//           //           ),
//           //         ),
                  
//           //         //SizedBox(height: 15,)
//           //        ],
//           //         dividerHeight: 0,
//           //     splashFactory: NoSplash.splashFactory,
//           //       overlayColor: WidgetStateProperty.all(Colors.transparent),
//           //      unselectedLabelColor: Color(0xff8D8585),
//           //   // isScrollable: true,
//           //   labelColor: Color(0xffFFFFFF),
//           //  // automaticIndicatorColorAdjustme
//           //  //nt: true,
           
//           //       indicator: BoxDecoration(
//           //       //  color: Color(0xff919EDF),
//           //       //  borderRadius: BorderRadius.all(Radius.circular(10))
//           //       color: null,
        
//           //       ),
                
              
             
//           // ),

//           TabBar(
//   onTap: (index) {
//     setState(() {
//       if (index == 0) {
//         selectedAddressType = 'House';
//       } else if (index == 1) {
//         selectedAddressType = 'Office';
//       } else {
//         selectedAddressType = 'Other';
//       }
//     });
//   },

//   tabs: [
//     Container(
//       height: 41,
//       width: 105,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: selectedAddressType == 'House'
//             ? const Color(0xffF79C1C)
//             : const Color(0xffDFDFDF),
//       ),
//       child: Center(
//         child: Text(
//           'House',
//           style: TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.w500,
//             color: selectedAddressType == 'House'
//                 ? Colors.white
//                 : const Color(0xff8D8585),
//           ),
//         ),
//       ),
//     ),

//     Container(
//       height: 41,
//       width: 105,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: selectedAddressType == 'Office'
//             ? const Color(0xffF79C1C)
//             : const Color(0xffDFDFDF),
//       ),
//       child: Center(
//         child: Text(
//           'Office',
//           style: TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.w500,
//             color: selectedAddressType == 'Office'
//                 ? Colors.white
//                 : const Color(0xff8D8585),
//           ),
//         ),
//       ),
//     ),

//     Container(
//       height: 41,
//       width: 105,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: selectedAddressType == 'Other'
//             ? const Color(0xffF79C1C)
//             : const Color(0xffDFDFDF),
//       ),
//       child: Center(
//         child: Text(
//           'Other',
//           style: TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.w500,
//             color: selectedAddressType == 'Other'
//                 ? Colors.white
//                 : const Color(0xff8D8585),
//           ),
//         ),
//       ),
//     ),
//   ],

//   dividerHeight: 0,
//   indicator: const BoxDecoration(),
//   splashFactory: NoSplash.splashFactory,
//   overlayColor: WidgetStateProperty.all(
//     Colors.transparent,
//   ),
// ),
//           SizedBox(height: 12,),
//           Text('Full Name',
//            style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                           color: Color(0xfff595A58),
//                           ),
//           ),
//           SizedBox(height: 10,),
//             Container(
//               width: 346,
//               height: 41,
//               child: TextFormField(
                
//                 keyboardType: TextInputType.name,
//                 validator: (value) {
//   if (value == null || value.trim().isEmpty) {
//     return 'Full name is required';
//   }

//   if (value.trim().length < 3) {
//     return 'Name must contain at least 3 characters';
//   }

//   if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value.trim())) {
//     return 'Name can contain only letters';
//   }

//   return null;
// },
//                 controller: namecontroller,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Color(0xff726969)
//                     ),
//                    borderRadius: BorderRadius.all(Radius.circular(10)) 
//                   )
//                 ),
//               ),
//             ),
//              SizedBox(height: 12,),
//           // Text('House/Flat Number',
//           //  style: TextStyle(
//           //                   fontSize: 16,
//           //                   fontWeight: FontWeight.w600,
//           //                 color: Color(0xfff595A58),
//           //                 ),
//           // ),
//           Text(
//   selectedAddressType == 'House'
//       ? 'House / Flat Number'
//       : selectedAddressType == 'Office'
//           ? 'Office / Room Number'
//           : 'Door / Address Number',
//   style: const TextStyle(
//     fontSize: 16,
//     fontWeight: FontWeight.w500,
//   ),
// ),


//           SizedBox(height: 10,),
//             Container(
//               width: 346,
//               height: 41,
//               child: TextFormField(
                
//                 keyboardType: TextInputType.text,
//                 validator: (value) {
//   if (value == null || value.trim().isEmpty) {
//     return 'House/Flat number is required';
//   }

//   if (value.trim().length < 1) {
//     return 'Enter a valid house/flat number';
//   }

//   if (value.trim().length > 20) {
//     return 'House/Flat number is too long';
//   }

//   if (!RegExp(r'^[a-zA-Z0-9\-\/ ]+$')
//       .hasMatch(value.trim())) {
//     return 'Enter a valid house/flat number';
//   }

//   return null;
// },
//                 controller: flateNumcontroller,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Color(0xff726969)
//                     ),
//                    borderRadius: BorderRadius.all(Radius.circular(10)) 
//                   )
//                 ),
//               ),
//             ),
//              SizedBox(height: 12,),
//           Text('Floor Number',
//            style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                           color: Color(0xfff595A58),
//                           ),
//           ),
//           SizedBox(height: 10,),
//             Container(
//               width: 346,
//               height: 41,
//               child: TextFormField(
                
//                 keyboardType: TextInputType.number,
//                 validator: (value) {
//   if (value == null || value.trim().isEmpty) {
//     return 'Floor number is required';
//   }

//   if (!RegExp(r'^[0-9]+$').hasMatch(value.trim())) {
//     return 'Floor number must contain numbers only';
//   }

//   int? floor = int.tryParse(value.trim());

//   if (floor == null) {
//     return 'Enter a valid floor number';
//   }

//   if (floor > 100) {
//     return 'Enter a valid floor number';
//   }

//   return null;
// },
//                 controller: floorNumcontroller,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Color(0xff726969)
//                     ),
//                    borderRadius: BorderRadius.all(Radius.circular(10)) 
//                   )
//                 ),
//               ),
//             ),
//              SizedBox(height: 12,),
//           Text('Building Name',
//            style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                           color: Color(0xfff595A58),
//                           ),
//           ),
//           SizedBox(height: 10,),
//             Container(
//               width: 346,
//               height: 41,
//               child: TextFormField(
                
//                 keyboardType: TextInputType.text,
//                 validator: (value) {
//   if (value == null || value.trim().isEmpty) {
//     return 'Building name is required';
//   }

//   if (value.trim().length < 2) {
//     return 'Building name must contain at least 2 characters';
//   }

//   if (value.trim().length > 50) {
//     return 'Building name is too long';
//   }

//   if (!RegExp(r'^[a-zA-Z0-9 ]+$')
//       .hasMatch(value.trim())) {
//     return 'Enter a valid building name';
//   }

//   return null;
// },
//                 controller: Buildingnamecontroller,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Color(0xff726969)
//                     ),
//                    borderRadius: BorderRadius.all(Radius.circular(10)) 
//                   )
//                 ),
//               ),
//             ),
            
//              SizedBox(height: 12,),
//           Text('Contact Number',
//            style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                           color: Color(0xfff595A58),
//                           ),
//           ),
//           SizedBox(height: 10,),
//             Container(
//               width: 346,
//               height: 41,
//               child: TextFormField(
//                 keyboardType: TextInputType.phone,
//                 validator: (value) {
//   if (value == null || value.trim().isEmpty) {
//     return 'Contact number is required';
//   }

//   if (!RegExp(r'^[0-9]+$').hasMatch(value.trim())) {
//     return 'Contact number must contain numbers only';
//   }

//   if (value.trim().length != 10) {
//     return 'Contact number must be 10 digits';
//   }

//   if (!RegExp(r'^[6-9][0-9]{9}$')
//       .hasMatch(value.trim())) {
//     return 'Enter a valid mobile number';
//   }

//   return null;
// },
//                 controller: phonenumcontroller,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Color(0xff726969)
//                     ),
//                    borderRadius: BorderRadius.all(Radius.circular(10)) 
//                   )
//                 ),
//               ),
//             ),
//             SizedBox(height: 21,),
// //                               Container(
// //                 height: 49,
// //                 width: double.infinity,
               
// //                 decoration: BoxDecoration(
// //                   borderRadius: BorderRadius.all(Radius.circular(10)),
// //                    color: Color(0xffF79C1C),
// //                 ),
                
// //                 child: TextButton(onPressed: () async {
// //                   if (!_formKey.currentState!.validate()) {
// //   return;
// // }
// //           try {
// //             final user = FirebaseAuth.instance.currentUser;
        
// //             if (user == null) {
// //         ScaffoldMessenger.of(context).showSnackBar(
// //           const SnackBar(
// //             content: Text('Please login first'),
// //           ),
// //         );
// //         return;
// //             }
        
// //             await FirebaseFirestore.instance
// //           .collection('addressdetails')
// //           .doc(user.uid)
// //           .set({
// //         'uid': user.uid,
// //         'fullName': namecontroller.text.trim(),
// //         'flatNumber': flateNumcontroller.text.trim(),
// //         'floorNumber': floorNumcontroller.text.trim(),
// //         'buildingName': Buildingnamecontroller.text.trim(),
// //         'contactNumber': phonenumcontroller.text.trim(),
// //         //'addressType': 'House',
// //         'addressType': selectedAddressType,
// //         'updatedAt': FieldValue.serverTimestamp(),
// //             });
        
// //             ScaffoldMessenger.of(context).showSnackBar(
// //         const SnackBar(
// //           content: Text('Address updated successfully'),
// //         ),
// //             );
        
// //             Navigator.pushReplacement(
// //         context,
// //         MaterialPageRoute(
// //           builder: (context) => const Selectaddress(),
// //         ),
// //             );
// //           } catch (e) {
// //             ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(
// //           content: Text('Error: $e'),
// //         ),
// //             );
// //           }
// //         },
// //         // child: Text('Add Address',
// //         //         style: TextStyle(
// //         //           fontSize: 24,
// //         //           fontWeight: FontWeight.w600,
// //         //           color: Color(0xffFFFFFF)
// //         //         ),)
// //         child: Text(
// //   widget.isEditing
// //       ? 'Update Address'
// //       : 'Add Address',
// //   style: const TextStyle(
// //     fontSize: 24,
// //     fontWeight: FontWeight.w600,
// //     color: Colors.white,
// //   ),
// // ),
// //                 ),
// //               )


// Container(
//   height: 49,
//   width: double.infinity,
//   decoration: BoxDecoration(
//     color: const Color(0xffF79C1C),
//     borderRadius: BorderRadius.circular(10),
//   ),
//   child: TextButton(
//     onPressed: () async {

//       // your validation
//       if (!_formKey.currentState!.validate()) {
//         return;
//       }

//       final user = FirebaseAuth.instance.currentUser;

//       if (user == null) {
//         return;
//       }

// //       await FirebaseFirestore.instance
// //           .collection('addressdetails')
// //           .doc(user.uid)
// //           .set({
// //         'uid': user.uid,
// //         'fullName': namecontroller.text.trim(),
// //         'flatNumber': flateNumcontroller.text.trim(),
// //         'floorNumber': floorNumcontroller.text.trim(),
// //         'buildingName': Buildingnamecontroller.text.trim(),
// //         'contactNumber': phonenumcontroller.text.trim(),
// //         'addressType': selectedAddressType,
// //         'updatedAt': FieldValue.serverTimestamp(),
// //       });

// //       // if (mounted) {
// //       //   Navigator.pop(context);
// //       // }
// //       if (mounted) {
// //   Navigator.pushReplacement(
// //     context,
// //     MaterialPageRoute(
// //       builder: (context) => const Selectaddress(),
// //     ),
// //   );
// // }
// await FirebaseFirestore.instance
//     .collection('addressdetails')
//     .doc(user.uid)
//     .set({
//   'uid': user.uid,
//   'fullName': namecontroller.text.trim(),
//   'flatNumber': flateNumcontroller.text.trim(),
//   'floorNumber': floorNumcontroller.text.trim(),
//   'buildingName': Buildingnamecontroller.text.trim(),
//   'contactNumber': phonenumcontroller.text.trim(),
//   'addressType': selectedAddressType,
//   'updatedAt': FieldValue.serverTimestamp(),
// });

// if (mounted) {
//   Navigator.pushReplacement(
//     context,
//     MaterialPageRoute(
//       builder: (context) => const Selectaddress(),
//     ),
//   );
// }
//     },

//     child: Text(
//       widget.isEditing
//           ? 'Update Address'
//           : 'Add Address',
//       style: const TextStyle(
//         fontSize: 24,
//         fontWeight: FontWeight.w600,
//         color: Colors.white,
//       ),
//     ),
//   ),
// ),
//           ],
//           ),
//         ),),
//       )
//     );
//   }
// }






import 'package:flutter/material.dart';
import 'package:mini_project/view/Drawer/Address/selectAddress.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Newaddressscreen extends StatefulWidget {
  
 final bool isEditing;
  final Map<String, dynamic>? addressData;
  const Newaddressscreen({super.key,
    this.isEditing = false,
    this.addressData,});

  @override
  State<Newaddressscreen> createState() => _NewaddressscreenState();
}

class _NewaddressscreenState extends State<Newaddressscreen> {
  TextEditingController namecontroller=TextEditingController();
   TextEditingController flateNumcontroller=TextEditingController();
    TextEditingController floorNumcontroller=TextEditingController();
     // ignore: non_constant_identifier_names
     TextEditingController Buildingnamecontroller=TextEditingController();
      TextEditingController phonenumcontroller=TextEditingController();
       final _formKey = GlobalKey<FormState>();
       String selectedAddressType = 'House';

       @override
void initState() {
  super.initState();

  if (widget.isEditing && widget.addressData != null) {
    final data = widget.addressData!;

    namecontroller.text = data['fullName'] ?? '';
    flateNumcontroller.text = data['flatNumber'] ?? '';
    floorNumcontroller.text = data['floorNumber'] ?? '';
    Buildingnamecontroller.text = data['buildingName'] ?? '';
    phonenumcontroller.text = data['contactNumber'] ?? '';

    selectedAddressType =
        data['addressType'] ?? 'House';
  }
}
       
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Form(
        key: _formKey,
        child: DefaultTabController(length: 3, child: 
        Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 24,
            vertical: 58,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                          Text('Add New Address',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),)
                        ],
                      ) ,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Image.asset('assets/images/Frame 202.png',
                  width: 345,
                  height: 129,),
                   SizedBox(
                    height: 10,
                  ),
                  Text('Address Type',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff595A58),
                          ),),
                            SizedBox(
                    height: 10,
                  ),
        
          //        TabBar(tabs: [
          //         Container(
        
          //           height: 41,
          //           width: 105,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.all(Radius.circular(10)),
          //             color: Color(0xffDFDFDF)
          //           ),
          //           child: Align(alignment: AlignmentGeometry.center,child: Text('House',
          //           style: TextStyle(
          //                   fontSize: 14,
          //                   fontWeight: FontWeight.w500,
          //                  // color: Color(0xff8D8585),
          //                 ),),
          //           ),
          //         ),
          //       //  SizedBox(height: 15,),
          //          Container(
          //           height: 41,
          //           width: 105,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.all(Radius.circular(10)),
          //             color: Color(0xffDFDFDF)
          //           ),
          //           child: Align(alignment: AlignmentGeometry.center,child: Text('Office',
          //           style: TextStyle(
          //                   fontSize: 14,
          //                   fontWeight: FontWeight.w500,
          //                   //color: Color(0xff8D8585),
          //                 ),),
          //           ),
          //         ),
          //       //  SizedBox(height: 15,),
          //          Container(
          //           height: 41,
          //           width: 105,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.all(Radius.circular(10)),
          //             color: Color(0xffDFDFDF)
          //           ),
          //           child: Align(alignment: AlignmentGeometry.center,child: Text('Other',
          //           style: TextStyle(
          //                   fontSize: 14,
          //                   fontWeight: FontWeight.w500,
          //                   //color: Color(0xff8D8585),
          //                 ),),
          //           ),
          //         ),
                  
          //         //SizedBox(height: 15,)
          //        ],
          //         dividerHeight: 0,
          //     splashFactory: NoSplash.splashFactory,
          //       overlayColor: WidgetStateProperty.all(Colors.transparent),
          //      unselectedLabelColor: Color(0xff8D8585),
          //   // isScrollable: true,
          //   labelColor: Color(0xffFFFFFF),
          //  // automaticIndicatorColorAdjustme
          //  //nt: true,
           
          //       indicator: BoxDecoration(
          //       //  color: Color(0xff919EDF),
          //       //  borderRadius: BorderRadius.all(Radius.circular(10))
          //       color: null,
        
          //       ),
                
              
             
          // ),

          TabBar(
  onTap: (index) {
    setState(() {
      if (index == 0) {
        selectedAddressType = 'House';
      } else if (index == 1) {
        selectedAddressType = 'Office';
      } else {
        selectedAddressType = 'Other';
      }
    });
  },

  tabs: [
    Container(
      height: 41,
      width: 105,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: selectedAddressType == 'House'
            ? const Color(0xffF79C1C)
            : const Color(0xffDFDFDF),
      ),
      child: Center(
        child: Text(
          'House',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: selectedAddressType == 'House'
                ? Colors.white
                : const Color(0xff8D8585),
          ),
        ),
      ),
    ),

    Container(
      height: 41,
      width: 105,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: selectedAddressType == 'Office'
            ? const Color(0xffF79C1C)
            : const Color(0xffDFDFDF),
      ),
      child: Center(
        child: Text(
          'Office',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: selectedAddressType == 'Office'
                ? Colors.white
                : const Color(0xff8D8585),
          ),
        ),
      ),
    ),

    Container(
      height: 41,
      width: 105,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: selectedAddressType == 'Other'
            ? const Color(0xffF79C1C)
            : const Color(0xffDFDFDF),
      ),
      child: Center(
        child: Text(
          'Other',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: selectedAddressType == 'Other'
                ? Colors.white
                : const Color(0xff8D8585),
          ),
        ),
      ),
    ),
  ],

  dividerHeight: 0,
  indicator: const BoxDecoration(),
  splashFactory: NoSplash.splashFactory,
  overlayColor: WidgetStateProperty.all(
    Colors.transparent,
  ),
),
          SizedBox(height: 12,),
          Text('Full Name',
           style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          color: Color(0xfff595A58),
                          ),
          ),
          SizedBox(height: 10,),
            Container(
              width: 346,
              height: 41,
              child: TextFormField(
                
                keyboardType: TextInputType.name,
                validator: (value) {
  if (value == null || value.trim().isEmpty) {
    return 'Full name is required';
  }

  if (value.trim().length < 3) {
    return 'Name must contain at least 3 characters';
  }

  if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value.trim())) {
    return 'Name can contain only letters';
  }

  return null;
},
                controller: namecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff726969)
                    ),
                   borderRadius: BorderRadius.all(Radius.circular(10)) 
                  )
                ),
              ),
            ),
             SizedBox(height: 12,),
          // Text('House/Flat Number',
          //  style: TextStyle(
          //                   fontSize: 16,
          //                   fontWeight: FontWeight.w600,
          //                 color: Color(0xfff595A58),
          //                 ),
          // ),
          Text(
  selectedAddressType == 'House'
      ? 'House / Flat Number'
      : selectedAddressType == 'Office'
          ? 'Office / Room Number'
          : 'Door / Address Number',
  style: const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ),
),


          SizedBox(height: 10,),
            Container(
              width: 346,
              height: 41,
              child: TextFormField(
                
                keyboardType: TextInputType.text,
                validator: (value) {
  if (value == null || value.trim().isEmpty) {
    return 'House/Flat number is required';
  }

  if (value.trim().length < 1) {
    return 'Enter a valid house/flat number';
  }

  if (value.trim().length > 20) {
    return 'House/Flat number is too long';
  }

  if (!RegExp(r'^[a-zA-Z0-9\-\/ ]+$')
      .hasMatch(value.trim())) {
    return 'Enter a valid house/flat number';
  }

  return null;
},
                controller: flateNumcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff726969)
                    ),
                   borderRadius: BorderRadius.all(Radius.circular(10)) 
                  )
                ),
              ),
            ),
             SizedBox(height: 12,),
          Text('Floor Number',
           style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          color: Color(0xfff595A58),
                          ),
          ),
          SizedBox(height: 10,),
            Container(
              width: 346,
              height: 41,
              child: TextFormField(
                
                keyboardType: TextInputType.number,
                validator: (value) {
  if (value == null || value.trim().isEmpty) {
    return 'Floor number is required';
  }

  if (!RegExp(r'^[0-9]+$').hasMatch(value.trim())) {
    return 'Floor number must contain numbers only';
  }

  int? floor = int.tryParse(value.trim());

  if (floor == null) {
    return 'Enter a valid floor number';
  }

  if (floor > 100) {
    return 'Enter a valid floor number';
  }

  return null;
},
                controller: floorNumcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff726969)
                    ),
                   borderRadius: BorderRadius.all(Radius.circular(10)) 
                  )
                ),
              ),
            ),
             SizedBox(height: 12,),
          Text('Building Name',
           style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          color: Color(0xfff595A58),
                          ),
          ),
          SizedBox(height: 10,),
            Container(
              width: 346,
              height: 41,
              child: TextFormField(
                
                keyboardType: TextInputType.text,
                validator: (value) {
  if (value == null || value.trim().isEmpty) {
    return 'Building name is required';
  }

  if (value.trim().length < 2) {
    return 'Building name must contain at least 2 characters';
  }

  if (value.trim().length > 50) {
    return 'Building name is too long';
  }

  if (!RegExp(r'^[a-zA-Z0-9 ]+$')
      .hasMatch(value.trim())) {
    return 'Enter a valid building name';
  }

  return null;
},
                controller: Buildingnamecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff726969)
                    ),
                   borderRadius: BorderRadius.all(Radius.circular(10)) 
                  )
                ),
              ),
            ),
            
             SizedBox(height: 12,),
          Text('Contact Number',
           style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          color: Color(0xfff595A58),
                          ),
          ),
          SizedBox(height: 10,),
            Container(
              width: 346,
              height: 41,
              child: TextFormField(
                keyboardType: TextInputType.phone,
                validator: (value) {
  if (value == null || value.trim().isEmpty) {
    return 'Contact number is required';
  }

  if (!RegExp(r'^[0-9]+$').hasMatch(value.trim())) {
    return 'Contact number must contain numbers only';
  }

  if (value.trim().length != 10) {
    return 'Contact number must be 10 digits';
  }

  if (!RegExp(r'^[6-9][0-9]{9}$')
      .hasMatch(value.trim())) {
    return 'Enter a valid mobile number';
  }

  return null;
},
                controller: phonenumcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff726969)
                    ),
                   borderRadius: BorderRadius.all(Radius.circular(10)) 
                  )
                ),
              ),
            ),
            SizedBox(height: 21,),
//                               Container(
//                 height: 49,
//                 width: double.infinity,
               
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                    color: Color(0xffF79C1C),
//                 ),
                
//                 child: TextButton(onPressed: () async {
//                   if (!_formKey.currentState!.validate()) {
//   return;
// }
//           try {
//             final user = FirebaseAuth.instance.currentUser;
        
//             if (user == null) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//             content: Text('Please login first'),
//           ),
//         );
//         return;
//             }
        
//             await FirebaseFirestore.instance
//           .collection('addressdetails')
//           .doc(user.uid)
//           .set({
//         'uid': user.uid,
//         'fullName': namecontroller.text.trim(),
//         'flatNumber': flateNumcontroller.text.trim(),
//         'floorNumber': floorNumcontroller.text.trim(),
//         'buildingName': Buildingnamecontroller.text.trim(),
//         'contactNumber': phonenumcontroller.text.trim(),
//         //'addressType': 'House',
//         'addressType': selectedAddressType,
//         'updatedAt': FieldValue.serverTimestamp(),
//             });
        
//             ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text('Address updated successfully'),
//         ),
//             );
        
//             Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (context) => const Selectaddress(),
//         ),
//             );
//           } catch (e) {
//             ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('Error: $e'),
//         ),
//             );
//           }
//         },
//         // child: Text('Add Address',
//         //         style: TextStyle(
//         //           fontSize: 24,
//         //           fontWeight: FontWeight.w600,
//         //           color: Color(0xffFFFFFF)
//         //         ),)
//         child: Text(
//   widget.isEditing
//       ? 'Update Address'
//       : 'Add Address',
//   style: const TextStyle(
//     fontSize: 24,
//     fontWeight: FontWeight.w600,
//     color: Colors.white,
//   ),
// ),
//                 ),
//               )


Container(
  height: 49,
  width: double.infinity,
  decoration: BoxDecoration(
    color: const Color(0xffF79C1C),
    borderRadius: BorderRadius.circular(10),
  ),
  child: TextButton(
    onPressed: () async {

      // your validation
      if (!_formKey.currentState!.validate()) {
        return;
      }

      final user = FirebaseAuth.instance.currentUser;

      if (user == null) {
        return;
      }

//       await FirebaseFirestore.instance
//           .collection('addressdetails')
//           .doc(user.uid)
//           .set({
//         'uid': user.uid,
//         'fullName': namecontroller.text.trim(),
//         'flatNumber': flateNumcontroller.text.trim(),
//         'floorNumber': floorNumcontroller.text.trim(),
//         'buildingName': Buildingnamecontroller.text.trim(),
//         'contactNumber': phonenumcontroller.text.trim(),
//         'addressType': selectedAddressType,
//         'updatedAt': FieldValue.serverTimestamp(),
//       });

//       // if (mounted) {
//       //   Navigator.pop(context);
//       // }
//       if (mounted) {
//   Navigator.pushReplacement(
//     context,
//     MaterialPageRoute(
//       builder: (context) => const Selectaddress(),
//     ),
//   );
// }
await FirebaseFirestore.instance
    .collection('addressdetails')
    .doc(user.uid)
    .set({
  'uid': user.uid,
  'fullName': namecontroller.text.trim(),
  'flatNumber': flateNumcontroller.text.trim(),
  'floorNumber': floorNumcontroller.text.trim(),
  'buildingName': Buildingnamecontroller.text.trim(),
  'contactNumber': phonenumcontroller.text.trim(),
  'addressType': selectedAddressType,
  'updatedAt': FieldValue.serverTimestamp(),
});

if (mounted) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => const Selectaddress(),
    ),
  );
}
    },

    child: Text(
      widget.isEditing
          ? 'Update Address'
          : 'Add Address',
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
  ),
),
          ],
          ),
        ),),
      )
    );
  }
}