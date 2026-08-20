





import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/view/get_menu.dart';

class Favouritescreen extends StatefulWidget {
  const Favouritescreen({super.key});

  @override
  State<Favouritescreen> createState() => _FavouritescreenState();
}

class _FavouritescreenState extends State<Favouritescreen> {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> removeFavorite(String documentID) async {
    final user = auth.currentUser;

    if (user == null) return;

    await firestore
        .collection('users')
        .doc(user.uid)
        .collection('favorites')
        .doc(documentID)
        .delete();
  }

  void gotodetailpage(int id) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GetMenu(menuid: id),
      ),
    );
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 23,
          vertical: 74,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Favourites',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xff1C1B1F),
              ),
            ),

            const SizedBox(height: 2),

            const Text(
              'Below is a part of Yur Loved Plates',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff1C1B1F),
              ),
            ),

            const SizedBox(height: 32),

            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: firestore
                    .collection('users')
                    .doc(user.uid)
                    .collection('favorites')
                    .snapshots(),

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

                  final favorites = snapshot.data?.docs ?? [];

                  if (favorites.isEmpty) {
                    return const Center(
                      child: Text(
                        'No favourites yet',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  }

                  return ListView.separated(
                    itemCount: favorites.length,

                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 14);
                    },

                    itemBuilder: (context, index) {

                      final data = favorites[index].data()
                          as Map<String, dynamic>;

                      final documentID = favorites[index].id;

                      return InkWell(
                        onTap: () {

                          // Make sure itemID exists in Firebase
                          final itemID = data['itemID'];

                          if (itemID != null) {
                            gotodetailpage(itemID);
                          }
                        },

                        child: Card(
                          elevation: 10,

                          child: Container(
                            height: 121,
                            width: 345,

                            decoration: BoxDecoration(
                              color: const Color(0xffFFFFFF),
                              borderRadius:
                                  BorderRadius.circular(10),
                            ),

                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 11,
                              ),

                              child: Row(
                                children: [

                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(10),

                                    child: Image.network(
                                      data['imageUrl'] ?? '',
                                      height: 100,
                                      width: 146,
                                      fit: BoxFit.cover,

                                      errorBuilder:
                                          (context, error, stackTrace) {
                                        return Container(
                                          height: 100,
                                          width: 146,
                                          color: Colors.grey[300],
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,

                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,

                                      children: [

                                        Text(
                                          data['itemName'] ?? '',
                                          maxLines: 1,
                                          overflow:
                                              TextOverflow.ellipsis,

                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight:
                                                FontWeight.w600,
                                            color:
                                                Color(0xff1C1B1F),
                                          ),
                                        ),

                                        const SizedBox(height: 7),

                                        const Text(
                                          'Cooks Well',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight:
                                                FontWeight.w500,
                                            color:
                                                Color(0xff595A58),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,

                                    children: [

                                      Row(
                                        children: [

                                          const Icon(
                                            Icons.paid_outlined,
                                            color:
                                                Color(0xffF79C1C),
                                          ),

                                          Text(
                                            '${data['itemPrice'] ?? 0}',
                                            style: const TextStyle(
                                              fontSize: 15.95,
                                              fontWeight:
                                                  FontWeight.w700,
                                              color:
                                                  Color(0xff595A58),
                                            ),
                                          ),
                                        ],
                                      ),

                                      IconButton(
                                        onPressed: () async {

                                          await removeFavorite(
                                            documentID,
                                          );

                                        },

                                        icon: const Icon(
                                          Icons.favorite,
                                          color: Color(0xffFD0004),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}