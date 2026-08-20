import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/view/Drawer/Address/Newaddress.dart';
import 'package:mini_project/view/Drawer/Payments/payment_method.dart';

class Selectaddress extends StatefulWidget {
  const Selectaddress({super.key});

  @override
  State<Selectaddress> createState() => _SelectaddressState();
}

class _SelectaddressState extends State<Selectaddress> {
  bool isAddressSelected = false;

  // Future<DocumentSnapshot?> getAddress() async {
  //   final user = FirebaseAuth.instance.currentUser;

  //   if (user == null) {
  //     return null;
  //   }

  //   return await FirebaseFirestore.instance
  //       .collection('addressdetails')
  //       .doc(user.uid)
  //       .get();
  // }
  
  Future<DocumentSnapshot?> getAddress() async {
    final user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      return null;
    }

    return await FirebaseFirestore.instance
        .collection('addressdetails')
        .doc(user.uid)
        .get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 58,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // BACK BUTTON
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Color(0xffF79C1C),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Address',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 27),

            // SEARCH
            TextFormField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                hintText: 'Search for Your favourite, Food',
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

            const SizedBox(height: 20),

            // ADDRESS DETAILS
            Expanded(
              child: FutureBuilder<DocumentSnapshot?>(
                future: getAddress(),
                builder: (context, snapshot) {

                  if (snapshot.connectionState ==
                      ConnectionState.waiting) {
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
                      snapshot.data == null ||
                      !snapshot.data!.exists) {
                    return const Center(
                      child: Text(
                        'No address found',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  }

                  final data =
                      snapshot.data!.data() as Map<String, dynamic>;

                 return SingleChildScrollView(
  child: GestureDetector(
    onTap: () {
      setState(() {
        isAddressSelected = true;
      });
    },
    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(12),
                      //   border: Border.all(
                      //     color: const Color(0xffD0D0D0),
                      //   ),
                      // ),
                      decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(12),

  color: isAddressSelected
      ? const Color(0xfffff3df)
      : Colors.white,

  border: Border.all(
    color: isAddressSelected
        ? const Color(0xffF79C1C)
        : const Color(0xffD0D0D0),

    width: isAddressSelected ? 2 : 1,
  ),
),
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [

                          // ADDRESS TYPE
                          // Row(
                          //   children: [
                          //     const Icon(
                          //       Icons.home_outlined,
                          //       color: Color(0xffF79C1C),
                          //     ),
                          //     const SizedBox(width: 8),
                          //     Text(
                          //       data['addressType'] ?? 'House',
                          //       style: const TextStyle(
                          //         fontSize: 17,
                          //         fontWeight: FontWeight.w600,
                          //       ),
                          //     ),
                          //   ],
                          // ),

                          Row(
  children: [
    const Icon(
      Icons.home_outlined,
      color: Color(0xffF79C1C),
    ),

    const SizedBox(width: 8),

    Expanded(
      child: Text(
        data['addressType'] ?? 'House',
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),

    if (isAddressSelected)
      const Icon(
        Icons.check_circle,
        color: Color(0xffF79C1C),
        size: 25,
      ),
  ],
),

                          const SizedBox(height: 12),

                          // FULL NAME
                          Text(
                            data['fullName'] ?? '',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 6),

                          // HOUSE / FLAT
                          Text(
                            'House/Flat: ${data['flatNumber'] ?? ''}',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xff595A58),
                            ),
                          ),

                          const SizedBox(height: 5),

                          // FLOOR
                          Text(
                            'Floor: ${data['floorNumber'] ?? ''}',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xff595A58),
                            ),
                          ),

                          const SizedBox(height: 5),

                          // BUILDING
                          Text(
                            'Building: ${data['buildingName'] ?? ''}',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xff595A58),
                            ),
                          ),

                          const SizedBox(height: 5),

                          // PHONE
                          Text(
                            'Contact: ${data['contactNumber'] ?? ''}',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xff595A58),
                            ),
                          ),
                          const SizedBox(height: 15),

// Align(
//   alignment: Alignment.centerRight,


//   child: TextButton.icon(
//   onPressed: () {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => Newaddressscreen(
//           isEditing: true,
//           addressData: data,
//         ),
//       ),
//     );
//   },
//   icon: const Icon(
//     Icons.edit,
//     color: Color(0xffF79C1C),
//   ),
//   label: const Text(
//     'Edit',
//     style: TextStyle(
//       color: Color(0xffF79C1C),
//     ),
//   ),
// ),
// ),


Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [

    // EDIT BUTTON
    TextButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Newaddressscreen(
              isEditing: true,
              addressData: data,
            ),
          ),
        );
      },
      icon: const Icon(
        Icons.edit,
        color: Color(0xffF79C1C),
      ),
      label: const Text(
        'Edit',
        style: TextStyle(
          color: Color(0xffF79C1C),
          fontWeight: FontWeight.w600,
        ),
      ),
    ),

    const SizedBox(width: 10),

    // DELETE BUTTON
    TextButton.icon(
      // onPressed: () async {
      //   final user = FirebaseAuth.instance.currentUser;

      //   if (user == null) return;

      //   await FirebaseFirestore.instance
      //       .collection('addressdetails')
      //       .doc(user.uid)
      //       .delete();

      //   if (mounted) {
      //     setState(() {});
      //   }

      //   ScaffoldMessenger.of(context).showSnackBar(
      //     const SnackBar(
      //       content: Text('Address deleted successfully'),
      //     ),
      //   );
      // },

//       onPressed: () async {
//   final shouldDelete = await showDialog<bool>(
//     context: context,
//     builder: (context) {
//       return AlertDialog(
//         title: const Text('Delete Address'),
//         content: const Text(
//           'Are you sure you want to delete this address?',
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.pop(context, false);
//             },
//             child: const Text('Cancel'),
//           ),
//           TextButton(
//             onPressed: () {
//               Navigator.pop(context, true);
//             },
//             child: const Text(
//               'Delete',
//               style: TextStyle(color: Colors.red),
//             ),
//           ),
//         ],
//       );
//     },
//   );

//   if (shouldDelete != true) return;

//   final user = FirebaseAuth.instance.currentUser;

//   if (user == null) return;

//   await FirebaseFirestore.instance
//       .collection('addressdetails')
//       .doc(user.uid)
//       .delete();

//   if (mounted) {
//     setState(() {});

//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(
//         content: Text('Address deleted successfully'),
//       ),
//     );
//   }
// },

onPressed: () async {
  final shouldDelete = await showDialog<bool>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Delete Address'),
        content: const Text(
          'Are you sure you want to delete this address?',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            child: const Text(
              'Delete',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      );
    },
  );

  if (shouldDelete != true) return;

  final user = FirebaseAuth.instance.currentUser;

  if (user == null) return;

  // Delete address from Firebase
  // await FirebaseFirestore.instance
  //     .collection('addressdetails')
  //     .doc(user.uid)
  //     .delete();

  // if (!mounted) return;

// Navigator.pushReplacement(
//   context,
//   MaterialPageRoute(
//     builder: (context) => Newaddressscreen(
//       isEditing: true,
//       addressData: data,
//     ),
//   ),
// );
await FirebaseFirestore.instance
    .collection('addressdetails')
    .doc(user.uid)
    .delete();

if (!mounted) return;

setState(() {
  isAddressSelected = false;
});

ScaffoldMessenger.of(context).showSnackBar(
  const SnackBar(
    content: Text('Address deleted successfully'),
  ),
);
},
      icon: const Icon(
        Icons.delete_outline,
        color: Colors.red,
      ),
      label: const Text(
        'Delete',
        style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  ],
),
                        ],
                      ),
                    ),),
                  );
                },
              ),
            ),

            const SizedBox(height: 15),

            // SELECT ADDRESS BUTTON
            Container(
              height: 49,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                color: const Color(0xffF79C1C),
              ),
              child: TextButton(
                // onPressed: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => Paymentmethod(),
                //     ),
                //   );
                // },

                onPressed: () {
  if (!isAddressSelected) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Please select an address',
        ),
      ),
    );

    return;
  }

  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => Paymentmethod(),
    ),
  );
},
                child: const Text(
                  'Select Address',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}