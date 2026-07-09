import 'package:flutter/material.dart';
import 'package:mini_project/Bottomnavigation.dart';
//import 'package:mini_project/cartScreen.dart';
import 'package:mini_project/drawer.dart';
//import 'package:mini_project/favouriteScreeb.dart';
//import 'package:mini_project/profilescreen.dart';
//import 'package:mini_project/searchscreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 56, horizontal: 24),
          child: ListView(
            children: [
              AppBar(
                // leading: IconButton(onPressed: () {
              
                // }, icon: Icon(Icons.menu)),
                leading: DrawerButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => drawerscreen(),
                      ),
                    );
                  },
                ),
                actions: [
                  Padding(
                    padding: EdgeInsetsGeometry.only(right: 7.5),
                    child: InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/person.png',
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_none),
                  ),
                ],
              ),
              
              SizedBox(height: 6),
              Text(
                'Good Morning , Prabal',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff595A58),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: 'Search for Your favourite, Food',
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, color: Color(0xff1C1B1F)),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.mic, color: Color(0xff1C1B1F)),
                  ),
                  fillColor: Color(0xffDCDCDC),
              
                  filled: true,
                ),
              ),
              SizedBox(height: 30),
              
              // Image.asset('assets/images/Frame 138.png',
              // height: 153,
              // width: 344,),
              Row(
                children: [
                  Container(
                    height: 153,
                    width: 344,
              
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xffF79C1C),
                    ),
                    child: Container(
                      height: 153,
                      width: 151,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xffF79C1C),
                      ),
              
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsGeometry.symmetric(
                              horizontal: 10,
                              vertical: 13,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Get up to\n25% off On\nAll Foood Orders',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                                SizedBox(height: 15),
                                Container(
                                  height: 40,
                                  width: 151,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentGeometry.center,
                                    child: Text(
                                      'Order now',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffF79C1C),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
              
                          Image.asset(
                            'assets/images/Frame 66.png',
              
                            alignment: AlignmentGeometry.centerRight,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1C1B1F),
                    ),
                  ),
                  Text(
                    'see all',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff595A58),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              
             
              SizedBox(
                height: 124,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Rectangle burger.png',
                          height: 124,
                          width: 123,
                        ),
                        SizedBox(width: 10),
              
                        Image.asset(
                          'assets/images/Rectangle 13 (1).png',
                          height: 124,
                          width: 123,
                        ),
                        SizedBox(width: 10),
              
                        Container(
                          child: Image.asset(
                            'assets/images/fullchicken.png',
                            height: 124,
                            width: 123,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
              SizedBox(height: 7),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffEBEBEB),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 37,
                    width: 89,
                    child: Align(
                      alignment: AlignmentGeometry.center,
                      child: Text(
                        'Breakfast',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff595A58),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(height: 51.5),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffEBEBEB),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 37,
                    width: 89,
                    child: Align(
                      alignment: AlignmentGeometry.center,
                      child: Text(
                        'Breakfast',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff595A58),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(height: 51.5),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffEBEBEB),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 37,
                    width: 89,
                    child: Align(
                      alignment: AlignmentGeometry.center,
                      child: Text(
                        'Breakfast',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff595A58),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              
              SizedBox(height: 20),
              Text(
                'New Luanch',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff1C1B1F),
                ),
              ),
              
              SizedBox(height: 20),
              Container(
               height: 276,
                  width: 344,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: Image.asset(
                  'assets/images/food22.jpg',
                   
                  
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
