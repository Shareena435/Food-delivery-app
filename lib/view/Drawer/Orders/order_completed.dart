import 'package:flutter/material.dart';

class Ordercompleted extends StatefulWidget {
  const Ordercompleted({super.key});

  @override
  State<Ordercompleted> createState() => _OrdercompletedState();
}

class _OrdercompletedState extends State<Ordercompleted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 26,),
          Card(
            elevation: 10,
         //   shadowColor: Color(0xff0000001A),
            child: Container(
              height:121 ,
              width:345 ,
              decoration: BoxDecoration(
                 color: Color(0xffFFD292),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Padding(
                 padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 10,
                  vertical: 11
                 ),
                child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/Frame 117 (4).png'),
                        Column(
                          children: [
                            Text('Steak',
                                                  
                             style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff1C1B1F)
                            ),),
                            SizedBox(height: 7,),
                            Text('Slice Of Meat',
                            
                              style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff595A58)
                            ),
                   
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.paid_outlined,color: Color(0xffF79C1C),),
                                Text('230',
                                 style: TextStyle(
                              fontSize: 15.95,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff595A58)
                            ),
                   )
                              ],
                            ),
                            Icon(Icons.check_circle_outline,color: Color(0xff00FF1E),)
                          ],
                        )
                      ],
                    ),
              ),
               ),
              ),
              
            
          
          SizedBox(height: 14,),
           Card(
            elevation: 10,
         //   shadowColor: Color(0xff0000001A),
            child: Container(
              height:121 ,
              width:345 ,
              decoration: BoxDecoration(
                 color: Color(0xffFFD292),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
             
              child: Padding(
                 padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 10,
                  vertical: 11
                 ),
                child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/Frame 117 (6).png'),
                        Column(
                          children: [
                            Text('Popcorn',
                                                  
                             style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff1C1B1F)
                            ),),
                            SizedBox(height: 7,),
                            Text('Cooks Well',
                            
                              style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff595A58)
                            ),
                   
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.paid_outlined,color: Color(0xffF79C1C),),
                                Text('230',
                                 style: TextStyle(
                              fontSize: 15.95,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff595A58)
                            ),
                   )
                              ],
                            ),
                            Icon(Icons.check_circle_outline,color: Color(0xff00FF1E),)
                          ],
                        )
                      ],
                    ),
              ),
               ),
              ),
            
            
          
          SizedBox(height: 14,),
           Card(
            elevation: 10,
         //   shadowColor: Color(0xff0000001A),
            child: Container(
              height:121 ,
              width:345 ,
              decoration: BoxDecoration(
                 color: Color(0xffFFD292),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
             
               child: Padding(
                 padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 10,
                  vertical: 11
                 ),
                 child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/Frame 117 (6).png'),
                      Column(
                        children: [
                          Text('popcorn',
                                                
                           style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff1C1B1F)
                          ),),
                          SizedBox(height: 7,),
                          Text('Cooks well',
                          
                            style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff595A58)
                          ),
                 
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.paid_outlined,color: Color(0xffF79C1C),),
                              Text('230',
                               style: TextStyle(
                            fontSize: 15.95,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff595A58)
                          ),
                 )
                            ],
                          ),
                          Icon(Icons.check_circle_outline,color: Color(0xff00FF1E),)
                        ],
                      )
                    ],
                  ),
               ),
              ),
            ),
          
            
          
        
          ])
    );
  }
}