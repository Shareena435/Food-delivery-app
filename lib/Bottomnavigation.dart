import 'package:flutter/material.dart';
import 'package:mini_project/cartScreen.dart';
import 'package:mini_project/favouriteScreeb.dart';
import 'package:mini_project/homescreen.dart';
import 'package:mini_project/profilescreen.dart';
import 'package:mini_project/searchscreen.dart';

class Bottomnavigationscreen extends StatefulWidget {
  const Bottomnavigationscreen({super.key});

  @override
  State<Bottomnavigationscreen> createState() => _BottomnavigationscreenState();
}

class _BottomnavigationscreenState extends State<Bottomnavigationscreen> {
   var currentIndex=0;
  List<Widget>Screen=[Homescreen(),Searchscreen(),Favouritescreen(),Cartscreen(),Profilescreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex=value;
          });
        },
        currentIndex: currentIndex,
        items: [
             BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
               label: 'Home',
             ),
               BottomNavigationBarItem(icon: Icon(Icons.search_rounded),
               label: 'Search',
             ),
               BottomNavigationBarItem(icon: Icon(Icons.favorite_border),
               label: 'Favourite',
             ),
               BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),
               label: 'Cart',
             ),
               BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined),
               label: 'Profile',
             ),
             
            
        ],
        selectedItemColor: Color(0xffF79C1C),
        unselectedIconTheme: IconThemeData(
          color: Color(0xff595A58)
        ),
        iconSize: 30,
       
      ),
       body: Screen[currentIndex],

    );
  }
}