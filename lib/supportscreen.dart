import 'package:flutter/material.dart';

class Supportscreen extends StatefulWidget {
  const Supportscreen({super.key});

  @override
  State<Supportscreen> createState() => _SupportscreenState();
}

class _SupportscreenState extends State<Supportscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
         padding: EdgeInsetsGeometry.symmetric(
          horizontal: 24,
          vertical: 62
         ),
         child: ListView(
          children: [
              InkWell(
                child: Container(
                 // height: 162,
                  //width: 24,
                  child:Row(
                    children: [
                      Icon(Icons.arrow_back_ios_new_outlined,
                      color: Color(0xffF79C1C),),
                      SizedBox(width: 10,),
                      Text('Support',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),)
                    ],
                  ) ,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 15,),
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
              SizedBox(height: 15,),
              GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                           // childAspectRatio: 1.0,
                           crossAxisSpacing: 0,
                           mainAxisSpacing: 0,
                           childAspectRatio: 165/239
              ),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              
              children: [
                Container(
                  
                  child: Image.asset('assets/images/Frame 193 (1).png',
                  height: 239,
                  width:165,
                  fit: BoxFit.cover,
                 
                  
                  ),
                ),
                  Container(
                    child: Image.asset('assets/images/Frame 194.png',
                                      height: 239,
                                      width:165,
                                      fit: BoxFit.cover,
                                      ),
                  ),
                  Container(
                    child: Image.asset('assets/images/Frame 194.png',
                                      height: 239,
                                      width:165,
                                      fit: BoxFit.cover,),
                  ),
                  Container(
                    child: Image.asset('assets/images/Frame 193 (1).png',
                                      height: 239,
                                      width:165,
                                      fit: BoxFit.cover,),
                  ),
                
              
              ],),
              SizedBox(height: 15,),
              Text('Frequently Asked Questions',
               style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff1C1B1F)
                      ),
              ),
               SizedBox(height: 15,),
               Container(
                height: 64,
                width: 342,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff595A58),

                  ),
                  color: Color(0xffFFFFFF),
                  borderRadius:BorderRadius.all(Radius.circular(10))
                ),
                child: Padding(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: 15,
                    vertical: 21.5
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('What is this app for?',
                       style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1C1B1F)
                            ),
                      ),
                      Icon(Icons.keyboard_arrow_down_rounded),
                      
                    ],
                  ),
                ),
               ),
               SizedBox(height: 20,),
                Container(
                height: 64,
                width: 342,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff595A58),

                  ),
                  color: Color(0xffFFFFFF),
                  borderRadius:BorderRadius.all(Radius.circular(10))
                ),
                child: Padding(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: 15,
                    vertical: 21.5
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('What kind of food is available?',
                       style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1C1B1F)
                            ),
                      ),
                      Icon(Icons.keyboard_arrow_down_rounded),
                      
                    ],
                  ),
                ),
               ),
              ]))
    );
  }
}