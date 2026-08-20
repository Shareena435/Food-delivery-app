import 'package:flutter/material.dart';
import 'package:mini_project/controller/menu_controller.dart';
import 'package:mini_project/model/menu_items.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SeeallPage extends StatefulWidget {
  const SeeallPage({super.key});

  @override
  State<SeeallPage> createState() => _SeeallPageState();
}

class _SeeallPageState extends State<SeeallPage> {
  Menucontroller menucontroller=Menucontroller();
  late Future<List<MenuItem>>menufuture;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    menufuture=menucontroller.getproduct();
  }
  // void gotodetailpage(int id){

  //   //opn getproduct screen with  product id
  //   Navigator.push(context, MaterialPageRoute(builder:  (context) =>GetMenu(menuid:id) ,));
  // }


  final FirebaseFirestore firestore = FirebaseFirestore.instance;
final FirebaseAuth auth = FirebaseAuth.instance;

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

  setState(() {});
}

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body: FutureBuilder(
        future: menufuture,
        builder: (context, asyncSnapshot) {
          
                if (asyncSnapshot.connectionState == ConnectionState.waiting) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }

      if (asyncSnapshot.hasError) {
        return Center(
          child: Text('Error: ${asyncSnapshot.error}'),
        );
      }

      if (!asyncSnapshot.hasData || asyncSnapshot.data!.isEmpty) {
        return const Center(
          child: Text('No menu found'),
        );
      }

      final menu = asyncSnapshot.data!;

          return ListView.builder(
            
            scrollDirection: Axis.vertical,
            itemBuilder:(context, index) {
              
               final item = menu[index];

          
          
              return Padding(padding: 
              EdgeInsetsGeometry.symmetric(
                horizontal: 24,
                vertical: 20,
              ),
          
              child: ListTile(
                onTap: () {

                   //if(product.id!=null){
               // gotodetailpage(product.id!);
             // }
                },
                title: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(10),
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.network(
                          item.imageUrl,
                          fit: BoxFit.cover,
                        )
                      ),
                      
                    ),
                    SizedBox(width: 10,),
                
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item.itemName,
                                style: TextStyle(
                                  color: Colors.red
                                ),
                              ),
                              // IconButton(onPressed: () {
                                
                              // }, icon: Icon(Icons.favorite_border_rounded))
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
      ),
    );
  },
),
                            ],
                          ),
                          Text(
                            item.itemDescription,
                
                          ),
                          Text(
                            "Price : ₹${item.itemPrice}",
                            style: TextStyle(
                              color: Colors.green
                            ),
                          )
                        ],
                      ),
                    )
                
                          
                  ],
                ),
              ),
              );
            }, );
        }
      ),
    );
  }
}