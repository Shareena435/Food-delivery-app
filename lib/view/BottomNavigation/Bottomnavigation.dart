import 'package:flutter/material.dart';
import 'package:mini_project/view/BottomNavigation/Cart/cartScreen.dart';
import 'package:mini_project/view/Drawer/favouriteScreeb.dart';
import 'package:mini_project/view/BottomNavigation/Homescreen/homescreen.dart';
import 'package:mini_project/view/Drawer/profilescreen.dart';
import 'package:mini_project/view/BottomNavigation/Favorite/Search/searchscreen.dart';

class Bottomnavigationscreen extends StatefulWidget {
   final int initialIndex;
  const Bottomnavigationscreen({super.key,this.initialIndex=0});

  @override
  State<Bottomnavigationscreen> createState() => _BottomnavigationscreenState();
}

class _BottomnavigationscreenState extends State<Bottomnavigationscreen> {
   late int currentIndex;
  
  List<Widget>Screen=[Homescreen(),Searchscreen(),Favouritescreen(),Cartscreen(),Profilescreen()];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex=widget.initialIndex;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SizedBox(
          height: 70,
          
          child: BottomNavigationBar(
            
          
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
          iconSize: 22,
          selectedFontSize: 10,
          unselectedFontSize: 9,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          
                 
                ),
        ),
       body: Screen[currentIndex],

    );
  }
}