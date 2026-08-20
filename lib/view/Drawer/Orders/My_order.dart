import 'package:flutter/material.dart';
//import 'package:mini_project/ActiveOrder.dart';
import 'package:mini_project/view/BottomNavigation/Bottomnavigation.dart';
import 'package:mini_project/view/Drawer/Orders/active_order.dart';
import 'package:mini_project/view/Drawer/Orders/order_cancelled.dart';
import 'package:mini_project/view/Drawer/Orders/order_completed.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: DefaultTabController(
        length: 3,
         child: 
         Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 24, vertical: 58),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: Container(
                  // height: 162,
                  //width: 24,
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Color(0xffF79C1C),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'My Order',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Bottomnavigationscreen(),));
                },
              ),
              SizedBox(height: 26),
              Container(
                height: 44,
                width: 345,
                decoration: BoxDecoration(
                   color: Color(0xffDFDFDF),
                  borderRadius: BorderRadius.all(Radius.circular(10),
                  )
                ),
               
                child: TabBar(tabs: [
                  Text('Active'),
                  Text('Completed'),
                  Text('Cancelled')
                
                ],
                dividerColor: Colors.transparent,
                dividerHeight: 0,
                indicator: BoxDecoration(
                  color: null,
                ),
                labelColor:Color(0xffF79C1C),
                unselectedLabelColor:  Color(0xff595A58),
                
                ),
                
              ),
              Expanded(
                child: TabBarView(children: [
                  Activeorder(),
                  Ordercompleted(),
                  Ordercancelled()
                ]),
              )
             
              ]),),
       )
    );
  }
}
