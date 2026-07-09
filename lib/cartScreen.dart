import 'package:flutter/material.dart';
import 'package:mini_project/Newaddress.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 24, vertical: 74),
        child: ListView(
          children: [
            Column(
            //  mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My cart',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff1C1B1F),
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'Selected items',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff595A58),
                  ),
                ),
            
                SizedBox(height: 21),
            
                Container(
                  width: 166,
                  height: 287,
                  child: Card(
                    color: Color(0xffF7F2F2),
                  //  shadowColor: Color(0xff0000001A),
                    elevation: 10,
            
                    child: Padding(
                      padding: EdgeInsetsGeometry.symmetric(
                        horizontal: 10,
                        vertical: 20,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Frame 117.png',
                            height: 100,
                            width: 146,
                          ),
            
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sandwich',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff1C1B1F),
                                ),
                              ),
            
                              Row(
                                children: [
                                  Icon(
                                    Icons.paid_outlined,
                                    color: Color(0xffF79C1C),
                                  ),
                                  Text(
                                    '230',
                                    style: TextStyle(
                                      fontSize: 15.95,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff595A58),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 1),
                          Text(
                            'Grilled Slice \n beef',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff595A58),
                            ),
                          ),
                          SizedBox(height: 7),
                          Container(
                            height: 60,
                            width: 146,
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {
                                     if(num>1){
                                    setState(() {
                                     
                                      num--;
                                    });
                                     }
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                    color: Color(0xffF79C1C),
                                  ),
                                ),
            
                                Text(
                                  num.toString(),
                                  style: TextStyle(color: Color(0xffF79C1C)),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      num++;
                                    });
                                  },
                                  icon: Icon(Icons.add, color: Color(0xffF79C1C)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            
                SizedBox(height: 101),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sub Total',
                      style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff595A58),
                                ),),
                     Row(
                                children: [
                                  Icon(
                                    Icons.paid_outlined,
                                    color: Color(0xffF79C1C),
                                  ),
                                  Text(
                                    '230',
                                    style: TextStyle(
                                      fontSize: 15.95,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff595A58),
                                    ),
                                  ),
                                ],),
            
                  ],
                ),
                SizedBox(height: 6,),
                   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery Charges',
                      style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff595A58),
                                ),),
                     Row(
                                children: [
                                  Icon(
                                    Icons.paid_outlined,
                                    color: Color(0xffF79C1C),
                                  ),
                                  Text(
                                    '50',
                                    style: TextStyle(
                                      fontSize: 15.95,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff595A58),
                                    ),
                                  ),
                                ],),
            
                  ],
                  
                ),
                SizedBox(height: 25,),
                   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total',
                      style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff1C1B1F),
                                ),),
                     Row(
                                children: [
                                  Icon(
                                    Icons.paid_outlined,
                                    color: Color(0xffF79C1C),
                                  ),
                                  Text(
                                    '230',
                                    style: TextStyle(
                                      fontSize: 15.95,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff595A58),
                                    ),
                                  ),
                                ],),
            
                  ],
                ),
                SizedBox(height: 20,),
                 Container(
                    height: 49,
                    width: 347,
                    decoration: BoxDecoration(
                      color: Color(0xffF79C1C),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    
                    child: TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Newaddressscreen(),));
                      
                    }, child: Text('Check Out',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFFFFFF)
                    ),),
                    ),
                  ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
