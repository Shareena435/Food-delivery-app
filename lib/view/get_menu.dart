
import 'package:flutter/material.dart';
import 'package:mini_project/view/BottomNavigation/Cart/cartScreen.dart';
import 'package:mini_project/view/Drawer/Payments/add_card.dart';
import 'package:mini_project/controller/menu_controller.dart';
import 'package:mini_project/model/menu_items.dart';
import 'package:mini_project/view/Drawer/Payments/paYnow.dart';
import 'package:mini_project/view/Drawer/Address/verify_address.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GetMenu extends StatefulWidget {
  final int menuid;

  const GetMenu({
    super.key,
    required this.menuid,
  });

  @override
  State<GetMenu> createState() => _GetMenuState();
}

class _GetMenuState extends State<GetMenu> {
  late Future<MenuItem> menufuture;

  final Menucontroller menucontroller = Menucontroller();

  @override
  void initState() {
    super.initState();

    menufuture = menucontroller.getproductByid(widget.menuid);
  }
  

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
final FirebaseAuth auth = FirebaseAuth.instance;

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

Future<void> toggleFavorite(MenuItem item) async {
  final user = auth.currentUser;

  if (user == null) {
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
    // Remove favorite
    await favoriteRef.delete();

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Removed from favourites'),
        ),
      );
    }
  } else {
    // Add favorite
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

  setState(() {});
}
Future<void> addToCart(MenuItem item) async {
  final user = FirebaseAuth.instance.currentUser;

  if (user == null) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Please login first'),
      ),
    );
    return;
  }

  final cartRef = FirebaseFirestore.instance
      .collection('users')
      .doc(user.uid)
      .collection('cart')
      .doc(item.itemID.toString());

  final cartDoc = await cartRef.get();

  if (cartDoc.exists) {
    final currentQuantity =
        cartDoc.data()?['quantity'] ?? 1;

    await cartRef.update({
      'quantity': currentQuantity + 1,
    });
  } else {
    await cartRef.set({
      'itemID': item.itemID,
      'itemName': item.itemName,
      'itemDescription': item.itemDescription,
      'itemPrice': item.itemPrice,
      'imageUrl': item.imageUrl,
      'restaurantName': item.restaurantName,
      'quantity': 1,
    });
  }

  if (mounted) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Added to cart'),
      ),
    );
  }
}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          
          title: const Text("Food Details"),
          centerTitle: true,
        ),
      
        body: FutureBuilder<MenuItem>(
          future: menufuture,
          builder: (context, snapshot) {
      
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
      
            if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }
      
            if (!snapshot.hasData) {
              return const Center(
                child: Text("No Data Found"),
              );
            }
      
            final item = snapshot.data!;
      
            return SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
      
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      item.imageUrl,
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.broken_image,
                          size: 120,
                        );
                      },
                    ),
                  ),
      
                  const SizedBox(height: 20),
      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.itemName,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      FutureBuilder<bool>(
  future: isFavorite(item.itemID!),
  builder: (context, snapshot) {
    final isFav = snapshot.data ?? false;

    return IconButton(
      onPressed: () async {
        await toggleFavorite(item);
      },
      icon: Icon(
        isFav
            ? Icons.favorite
            : Icons.favorite_border_rounded,
        color: isFav ? Colors.red : Colors.grey,
        size: 30,
      ),
    );
  },
),
                    ],
                  ),
      
                  const SizedBox(height: 10),
      
                 
      
                 
      
                  Text(
                    "Price : ₹${item.itemPrice}",
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                    ),
                  ),
      
                  const SizedBox(height: 10),
      
                  Text(
                    "Description",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
      
                  const SizedBox(height: 8),
      
                  Text(
                    item.itemDescription,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                     item.restaurantName,
                    style: const TextStyle(fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.brown),
                  ),
                  SizedBox(height: 30,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                  ),
                                  onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyAddress(),));
                                }, child: Text('Order  Now',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),)),

                              ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.orange,
  ),
  onPressed: () async {
    await addToCart(item);
  },
  child: const Text(
    'Add to Cart',
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
),
                              ],
                   )
                 
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}


