// import 'package:flutter/material.dart';
// import 'package:mini_project/view/Drawer/Address/Newaddress.dart';

// class Cartscreen extends StatefulWidget {
//   const Cartscreen({super.key});

//   @override
//   State<Cartscreen> createState() => _CartscreenState();
// }

// class _CartscreenState extends State<Cartscreen> {
//   int num = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsetsGeometry.symmetric(horizontal: 24, vertical: 74),
//         child: ListView(
//           children: [
//             Column(
//             //  mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'My cart',
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.w600,
//                     color: Color(0xff1C1B1F),
//                   ),
//                 ),
//                 SizedBox(height: 2),
//                 Text(
//                   'Selected items',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                     color: Color(0xff595A58),
//                   ),
//                 ),
            
//                 SizedBox(height: 21),
            
//                 Container(
//                   width: 166,
//                   height: 287,
//                   child: Card(
//                     color: Color(0xffF7F2F2),
//                   //  shadowColor: Color(0xff0000001A),
//                     elevation: 10,
            
//                     child: Padding(
//                       padding: EdgeInsetsGeometry.symmetric(
//                         horizontal: 10,
//                         vertical: 20,
//                       ),
//                       child: Column(
//                         children: [
//                           Image.asset(
//                             'assets/images/Frame 117.png',
//                             height: 100,
//                             width: 146,
//                           ),
            
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 'Sandwich',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w600,
//                                   color: Color(0xff1C1B1F),
//                                 ),
//                               ),
            
//                               Row(
//                                 children: [
//                                   Icon(
//                                     Icons.paid_outlined,
//                                     color: Color(0xffF79C1C),
//                                   ),
//                                   Text(
//                                     '230',
//                                     style: TextStyle(
//                                       fontSize: 15.95,
//                                       fontWeight: FontWeight.w700,
//                                       color: Color(0xff595A58),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: 1),
//                           Text(
//                             'Grilled Slice \n beef',
//                             style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w500,
//                               color: Color(0xff595A58),
//                             ),
//                           ),
//                           SizedBox(height: 7),
//                           Container(
//                             height: 60,
//                             width: 146,
//                             decoration: BoxDecoration(
//                               color: Color(0xffFFFFFF),
//                               borderRadius: BorderRadius.all(Radius.circular(10)),
//                             ),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 IconButton(
//                                   onPressed: () {
//                                      if(num>1){
//                                     setState(() {
                                     
//                                       num--;
//                                     });
//                                      }
//                                   },
//                                   icon: Icon(
//                                     Icons.remove,
//                                     color: Color(0xffF79C1C),
//                                   ),
//                                 ),
            
//                                 Text(
//                                   num.toString(),
//                                   style: TextStyle(color: Color(0xffF79C1C)),
//                                 ),
//                                 IconButton(
//                                   onPressed: () {
//                                     setState(() {
//                                       num++;
//                                     });
//                                   },
//                                   icon: Icon(Icons.add, color: Color(0xffF79C1C)),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
            
//                 SizedBox(height: 101),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Sub Total',
//                       style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w600,
//                                   color: Color(0xff595A58),
//                                 ),),
//                      Row(
//                                 children: [
//                                   Icon(
//                                     Icons.paid_outlined,
//                                     color: Color(0xffF79C1C),
//                                   ),
//                                   Text(
//                                     '230',
//                                     style: TextStyle(
//                                       fontSize: 15.95,
//                                       fontWeight: FontWeight.w700,
//                                       color: Color(0xff595A58),
//                                     ),
//                                   ),
//                                 ],),
            
//                   ],
//                 ),
//                 SizedBox(height: 6,),
//                    Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Delivery Charges',
//                       style: TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w500,
//                                   color: Color(0xff595A58),
//                                 ),),
//                      Row(
//                                 children: [
//                                   Icon(
//                                     Icons.paid_outlined,
//                                     color: Color(0xffF79C1C),
//                                   ),
//                                   Text(
//                                     '50',
//                                     style: TextStyle(
//                                       fontSize: 15.95,
//                                       fontWeight: FontWeight.w700,
//                                       color: Color(0xff595A58),
//                                     ),
//                                   ),
//                                 ],),
            
//                   ],
                  
//                 ),
//                 SizedBox(height: 25,),
//                    Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Total',
//                       style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w600,
//                                   color: Color(0xff1C1B1F),
//                                 ),),
//                      Row(
//                                 children: [
//                                   Icon(
//                                     Icons.paid_outlined,
//                                     color: Color(0xffF79C1C),
//                                   ),
//                                   Text(
//                                     '230',
//                                     style: TextStyle(
//                                       fontSize: 15.95,
//                                       fontWeight: FontWeight.w700,
//                                       color: Color(0xff595A58),
//                                     ),
//                                   ),
//                                 ],),
            
//                   ],
//                 ),
//                 SizedBox(height: 20,),
//                  Container(
//                     height: 49,
//                     width: 347,
//                     decoration: BoxDecoration(
//                       color: Color(0xffF79C1C),
//                       borderRadius: BorderRadius.all(Radius.circular(10))
//                     ),
                    
//                     child: TextButton(onPressed: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => Newaddressscreen(),));
                      
//                     }, child: Text('Check Out',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.w600,
//                       color: Color(0xffFFFFFF)
//                     ),),
//                     ),
//                   ),
                
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }






import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/view/Drawer/Address/Newaddress.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;

  final double deliveryCharge = 50;

  CollectionReference<Map<String, dynamic>> get cartReference {
    final user = auth.currentUser;

    return firestore
        .collection('users')
        .doc(user!.uid)
        .collection('cart');
  }

  Future<void> increaseQuantity(String itemId, int quantity) async {
    await cartReference.doc(itemId).update({
      'quantity': quantity + 1,
    });
  }

  Future<void> decreaseQuantity(String itemId, int quantity) async {
    if (quantity > 1) {
      await cartReference.doc(itemId).update({
        'quantity': quantity - 1,
      });
    } else {
      await cartReference.doc(itemId).delete();
    }
  }

  Future<void> removeItem(String itemId) async {
    await cartReference.doc(itemId).delete();
  }

  double calculateSubtotal(
    List<QueryDocumentSnapshot<Map<String, dynamic>>> items,
  ) {
    double subtotal = 0;

    for (final doc in items) {
      final data = doc.data();

      final double price =
          double.tryParse(data['itemPrice'].toString()) ?? 0;

      final int quantity =
          int.tryParse(data['quantity'].toString()) ?? 1;

      subtotal += price * quantity;
    }

    return subtotal;
  }

  @override
  Widget build(BuildContext context) {
    final user = auth.currentUser;

    if (user == null) {
      return const Scaffold(
        body: Center(
          child: Text('Please login first'),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 30,
          ),
          child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
            stream: cartReference.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    'Error: ${snapshot.error}',
                  ),
                );
              }

              if (!snapshot.hasData ||
                  snapshot.data!.docs.isEmpty) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'My cart',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 5),

                    const Text(
                      'Selected items',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff595A58),
                      ),
                    ),

                    const Expanded(
                      child: Center(
                        child: Text(
                          'Your cart is empty',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }

              final cartItems = snapshot.data!.docs;

              final double subtotal =
                  calculateSubtotal(cartItems);

              final double total =
                  subtotal + deliveryCharge;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'My cart',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1C1B1F),
                    ),
                  ),

                  const SizedBox(height: 2),

                  const Text(
                    'Selected items',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff595A58),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Expanded(
                    child: ListView.builder(
                      itemCount: cartItems.length,
                      itemBuilder: (context, index) {
                        final doc = cartItems[index];
                        final data = doc.data();

                        final String itemName =
                            data['itemName'] ?? '';

                        final String description =
                            data['itemDescription'] ?? '';

                        final String imageUrl =
                            data['imageUrl'] ?? '';

                        final double price =
                            double.tryParse(
                                  data['itemPrice'].toString(),
                                ) ??
                                0;

                        final int quantity =
                            int.tryParse(
                                  data['quantity'].toString(),
                                ) ??
                                1;

                        return Card(
                          margin: const EdgeInsets.only(
                            bottom: 15,
                          ),
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(10),
                                      child: Image.network(
                                        imageUrl,
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                        errorBuilder:
                                            (
                                              context,
                                              error,
                                              stackTrace,
                                            ) {
                                          return Container(
                                            width: 100,
                                            height: 100,
                                            color: Colors.grey[200],
                                            child: const Icon(
                                              Icons.broken_image,
                                            ),
                                          );
                                        },
                                      ),
                                    ),

                                    const SizedBox(width: 12),

                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  itemName,
                                                  style:
                                                      const TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold,
                                                  ),
                                                ),
                                              ),

                                              IconButton(
                                                onPressed: () {
                                                  removeItem(doc.id);
                                                },
                                                icon: const Icon(
                                                  Icons.delete_outline,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ],
                                          ),

                                          const SizedBox(height: 5),

                                          Text(
                                            description,
                                            maxLines: 2,
                                            overflow:
                                                TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              color:
                                                  Color(0xff595A58),
                                            ),
                                          ),

                                          const SizedBox(height: 5),

                                          Text(
                                            '₹$price',
                                            style:
                                                const TextStyle(
                                              fontSize: 16,
                                              fontWeight:
                                                  FontWeight.bold,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 10),

                                Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey.shade300,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceBetween,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          decreaseQuantity(
                                            doc.id,
                                            quantity,
                                          );
                                        },
                                        icon: const Icon(
                                          Icons.remove,
                                          color:
                                              Color(0xffF79C1C),
                                        ),
                                      ),

                                      Text(
                                        quantity.toString(),
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight:
                                              FontWeight.bold,
                                          color:
                                              Color(0xffF79C1C),
                                        ),
                                      ),

                                      IconButton(
                                        onPressed: () {
                                          increaseQuantity(
                                            doc.id,
                                            quantity,
                                          );
                                        },
                                        icon: const Icon(
                                          Icons.add,
                                          color:
                                              Color(0xffF79C1C),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 15),

                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Sub Total',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff595A58),
                        ),
                      ),

                      Text(
                        '₹${subtotal.toStringAsFixed(0)}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),

                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Delivery Charges',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff595A58),
                        ),
                      ),

                      Text(
                        '₹${deliveryCharge.toStringAsFixed(0)}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Text(
                        '₹${total.toStringAsFixed(0)}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  SizedBox(
                    height: 49,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffF79C1C),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Newaddressscreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Check Out',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}