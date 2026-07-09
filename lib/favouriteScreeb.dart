import 'package:flutter/material.dart';

class Favouritescreen extends StatefulWidget {
  const Favouritescreen({super.key});

  @override
  State<Favouritescreen> createState() => _FavouritescreenState();
}

class _FavouritescreenState extends State<Favouritescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 23, vertical: 74),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Favourites',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xff1C1B1F),
              ),
            ),
            SizedBox(height: 2),
            Text(
              'Below is a part of Yur Loved Plates',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff1C1B1F),
              ),
            ),
            SizedBox(height: 32),

            // Expanded(
            //   child: ListView(
            //     children: [
            //       Container(
            //         height: 121,
            //         width: 345,
            //         child: Card(
            //           color: Color(0xffFFFFFF),
            //          //  shadowColor: Color(0xff0000001A),
            //              elevation: 10,

            //           child: ListTile(
            //              leading:

            //               Image.asset('assets/images/Frame 117.png',
            //                height: 100,
            //                width: 146,
            //                ),
            //                title: Row(
            //                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                  children: [
            //                    Text('Steak',
            //                     style: TextStyle(
            //     fontSize:16,
            //     fontWeight: FontWeight.w600,
            //     color: Color(0xff1C1B1F)
            //   ),),
            //                    Row(
            //                      children: [
            //                        Icon(Icons.paid,
            //                        color: Color(0xffF79C1C),

            //                        ),
            //                        Text('230',
            //                         style: TextStyle(
            //     fontSize:15.95,
            //     fontWeight: FontWeight.w700,
            //     color: Color(0xff1C1B1F)
            //   ),)
            //                      ],
            //                    ),
            //                  ],
            //                ),
            //                subtitle: Text('Slice of Meat',
            //                 style: TextStyle(
            //     fontSize:14,
            //     fontWeight: FontWeight.w500,
            //     color: Color(0xff595A58)
            //   ),),
            //                trailing: Icon(Icons.favorite_border,
            //                color: Color(0xffFD0004),),
            //                contentPadding: EdgeInsetsDirectional.symmetric(
            //                 horizontal: 10,
            //                 vertical: 11
            //                )

            //              ),

            //         )
            //       ),

            //       SizedBox(height: 16,),
            //           Container(
            //         height: 121,
            //         width: 345,
            //         child: Card(
            //           color: Color(0xffFFFFFF),
            //          //  shadowColor: Color(0xff0000001A),
            //              elevation: 10,
            //           child: ListTile(
            //              leading:

            //               Image.asset('assets/images/Frame 117 (1).png',
            //                height: 100,
            //                width: 146,
            //                ),
            //                title: Row(
            //                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                  children: [
            //                    Text('Shawarma',
            //                     style: TextStyle(
            //     fontSize:16,
            //     fontWeight: FontWeight.w600,
            //     color: Color(0xff1C1B1F)
            //   ),),
            //                    Row(
            //                      children: [
            //                        Icon(Icons.paid_outlined,
            //                        color: Color(0xffF79C1C),

            //                        ),
            //                        Text('230',
            //                         style: TextStyle(
            //     fontSize:15.95,
            //     fontWeight: FontWeight.w700,
            //     color: Color(0xff1C1B1F)
            //   ),)
            //                      ],
            //                    ),
            //                  ],
            //                ),
            //                subtitle: Text('Slice of Meat',
            //                 style: TextStyle(
            //     fontSize:14,
            //     fontWeight: FontWeight.w500,
            //     color: Color(0xff595A58)
            //   ),),
            //                trailing: Icon(Icons.favorite_border,
            //                color: Color(0xffFD0004),),
            //                contentPadding: EdgeInsetsDirectional.symmetric(
            //                 horizontal: 10,
            //                 vertical: 11
            //                )

            //              ),

            //         )
            //       ),

            //       SizedBox(height: 16,),
            //           Container(
            //         height: 121,
            //         width: 345,
            //         child: Card(
            //           color: Color(0xffFFFFFF),
            //          //  shadowColor: Color(0xff0000001A),
            //              elevation: 10,
            //           child: ListTile(
            //              leading:

            //               Image.asset('assets/images/Frame 117 (2).png',
            //                height: 100,
            //                width: 146,
            //                ),
            //                title: Row(
            //                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                  children: [
            //                    Text('Steak',
            //                     style: TextStyle(
            //     fontSize:16,
            //     fontWeight: FontWeight.w600,
            //     color: Color(0xff1C1B1F)
            //   ),),
            //                    Row(
            //                      children: [
            //                        Icon(Icons.paid_outlined,
            //                        color: Color(0xffF79C1C),

            //                        ),
            //                        Text('230',
            //                         style: TextStyle(
            //     fontSize:15.95,
            //     fontWeight: FontWeight.w700,
            //     color: Color(0xff1C1B1F)
            //   ),)
            //                      ],
            //                    ),
            //                  ],
            //                ),
            //                subtitle: Text('Slice of Meat',
            //                 style: TextStyle(
            //     fontSize:14,
            //     fontWeight: FontWeight.w500,
            //     color: Color(0xff595A58)
            //   ),),
            //                trailing: Icon(Icons.favorite_border,
            //                color: Color(0xffFD0004),),
            //                contentPadding: EdgeInsetsDirectional.symmetric(
            //                 horizontal: 10,
            //                 vertical: 11
            //                )

            //              ),

            //         )
            //       ),

            //       SizedBox(height: 16,)
            //     ],
            //   ),
            // )
                 
                   Card(
            elevation: 10,
         //   shadowColor: Color(0xff0000001A),
            child: Container(
              height:121 ,
              width:345 ,
              decoration: BoxDecoration(
                 color: Color(0xffFFFFFF),
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
                        Image.asset('assets/images/Frame 117.png',),
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
                            Icon(Icons.favorite_border,color: Color(0xffFD0004),)
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
                 color: Color(0xffFFFFFF),
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
                      Image.asset('assets/images/Frame 117 (1).png',),
                        Column(
                          children: [
                            Text('Shawarma',
                                                  
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
                            Icon(Icons.favorite_border,color: Color(0xffFD0004),)
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
                 color: Color(0xffFFFFFF),
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
                     Image.asset('assets/images/Frame 117 (2).png',),
                      Column(
                        children: [
                          Text('Steak',
                                                
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
                 
                          ),
                          
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
                          Icon(Icons.favorite_border,color: Color(0xffFD0004),)
                        ],
                      )
                    ],
                  ),
               ),
              ),
            ),
          
        ],
                ),
              ),
            );
          
        
      
    
  }
}
