import 'package:flutter/material.dart';


class Searchscreen extends StatefulWidget {
  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          vertical: 79,
          horizontal: 23,
      
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Search',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xff1C1B1F),
                
              ),
             textAlign: TextAlign.start
              ),
              SizedBox(height: 12,
              ),
                
              Container(
                height: 52,
                width: 345,
                color: Color(0xffDCDCDC),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                     hintText: 'Search for your favourite Food',
                   
                    suffixIcon:
                    // Row(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    //   children: [
                       IconButton(onPressed: () {
                          
                                           }, icon: Icon(Icons.mic_none_outlined)),
                       suffix: IconButton(onPressed: () {
                         
                       }, icon: Icon(Icons.tune))
                                       
                   
                    
                    
                  ),
                ),
              ),
              SizedBox(height: 14,),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recent Search',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight:FontWeight.w600 ,
                    color: Color(0xff1C1B1F)
                  ),),
                  Text('Clear all',
                   style: TextStyle(
                    fontSize: 14,
                    fontWeight:FontWeight.w500 ,
                    color: Color(0xffF79C1C)
                  ),),
                
                
                  
                 
                ],
              ),
                SizedBox(height: 14,),
                
              // ListTile(
                
              //   leading: IconButton(onPressed:  () {
                  
              //   }, icon:Icon(Icons.sync)),
              //   title: Text('Kabab',
              //   style: TextStyle(
              //     fontSize:14 ,
              //     fontWeight: FontWeight.w500,
              //     color: Color(0xff908E8E)
              //   ),),
              //   trailing: IconButton(onPressed: () {
                  
              //   }, icon: Icon(Icons.close)),
              // ),
              //  ListTile(
              //   leading: IconButton(onPressed:  () {
                  
              //   }, icon:Icon(Icons.sync)),
              //   title: Text('Sandwich',
              //     style: TextStyle(
              //     fontSize:14 ,
              //     fontWeight: FontWeight.w500,
              //     color: Color(0xff908E8E)
              //   ),),
              //   trailing: IconButton(onPressed: () {
                  
              //   }, icon: Icon(Icons.close)),
              // ),
              //  ListTile(
              //   leading: IconButton(onPressed:  () {
                  
              //   }, icon:Icon(Icons.sync)),
              //   title: Text('Launch',
              //     style: TextStyle(
              //     fontSize:14 ,
              //     fontWeight: FontWeight.w500,
              //     color: Color(0xff908E8E)
              //   ),),
              //   trailing: IconButton(onPressed: () {
                  
              //   }, icon: Icon(Icons.close)),
              // ),
              // SizedBox(height: 24,),
              // Text('Top Categories',
              //                   style: TextStyle(
              //     fontSize:16,
              //     fontWeight: FontWeight.w600,
              //     color: Color(0xff1C1B1F)
              //   ),
              //   //textAlign: TextAlign.start,
              //   ),
          
             Container(
                height: 24,
                width: double.infinity,
              child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      
                      children: [
                        IconButton(onPressed:  () {
                          
                                     }, icon:Icon(Icons.sync),
                                     
                                     ),
                                     SizedBox(width: 23.5,),
                                      Text('Kabab',
                    style: TextStyle(
                      fontSize:14 ,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff908E8E)
                    ),),
                                 //  SizedBox(width: 23,),
                    
                    
                      ],
                      
                    
                    ),
                    IconButton(onPressed: () {
                      
                    }, icon: Icon(Icons.close))
                  ],
                ),
                
                
          
             ),
          
              SizedBox(height: 15,),
               Container(
                  height: 24,
                width: double.infinity,
               
              child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      
                      children: [
                        IconButton(onPressed:  () {
                          
                                     }, icon:Icon(Icons.sync),
                                     
                                     ),
                                     SizedBox(width: 23.5,),
                                      Text('Sandwich',
                    style: TextStyle(
                      fontSize:14 ,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff908E8E)
                    ),),
                                 //  SizedBox(width: 23,),
                    
                    
                      ],
                      
                    
                    ),
                    IconButton(onPressed: () {
                      
                    }, icon: Icon(Icons.close))
                  ],
                ),
                
                
          
             ),
               SizedBox(height: 15,),
              Container(
                height: 24,
                width: double.infinity,
              child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      
                      children: [
                        IconButton(onPressed:  () {
                          
                                     }, icon:Icon(Icons.sync),
                                     
                                     ),
                                     SizedBox(width: 23.5,),
                                      Text('Launch',
                    style: TextStyle(
                      fontSize:14 ,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff908E8E)
                    ),),
                                 //  SizedBox(width: 23,),
                    
                    
                      ],
                      
                    
                    ),
                    IconButton(onPressed: () {
                      
                    }, icon: Icon(Icons.close))
                  ],
                ),
                
                
          
             ),
              SizedBox(height: 24,),
               Text('Top Categories',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight:FontWeight.w600 ,
                    color: Color(0xff1C1B1F)
                  ),),
               SizedBox(height: 10,),
          
                SizedBox(
                  height: 97.69,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/Rectangle burger.png',
                            height: 97.69,
                            width: 100,
                          ),
                          SizedBox(width: 7.8),
                
                          Image.asset(
                            'assets/images/Rectangle 13 (1).png',
                            height: 97.69,
                            width: 100,
                          ),
                          SizedBox(width: 7.8,),
                
                          Container(
                            child: Image.asset(
                              'assets/images/fullchicken.png',
                              height: 97.69,
                            width: 100,
                              fit: BoxFit.cover,
                            ),
                            
                          ),
                           SizedBox(width: 7.8,),
                          
                          Container(
                            child: Image.asset(
                              'assets/images/newtab.jpg',
                              height: 97.69,
                            width: 100,
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
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEBEBEB),
                        borderRadius: BorderRadius.all(Radius.circular(7.88)),
                      ),
                      height: 28.76,
                      width: 70.76,
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
                    SizedBox(width:43.12),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEBEBEB),
                        borderRadius: BorderRadius.all(Radius.circular(7.88)),
                      ),
                     height: 28.76,
                      width: 70.76,
                      child: Align(
                        alignment: AlignmentGeometry.center,
                        child: Text(
                          'Launch',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff595A58),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width:43.12),
                    // SizedBox(height: 51.5),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEBEBEB),
                        borderRadius: BorderRadius.all(Radius.circular(7.88)),
                      ),
                     height: 28.76,
                      width: 70.76,
                      child: Align(
                        alignment: AlignmentGeometry.center,
                        child: Text(
                          'Dinner',
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
            ],
           
          ),
        ),
      ),
    );
  }
}