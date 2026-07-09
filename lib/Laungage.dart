import 'package:flutter/material.dart';

class Laungage extends StatefulWidget {
  const Laungage({super.key});

  @override
  State<Laungage> createState() => _LaungageState();
}

class _LaungageState extends State<Laungage> {
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
                      Text('profile',
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
              SizedBox(height: 20,),
              Container(
                height: 64,
                width: 342,
                
                
                decoration: BoxDecoration(
                  
                  color: Color(0xffFFFFFF),
                  border: BoxBorder.all(
                    color: Color(0xff595A58)
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10),
                  )
                ),
                child: ListTile(
                leading:Image.asset('assets/images/uk.png',
                height:18 ,
                width: 24,),
                title: Text('English(UK)',
                 style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1C1B1F),

                      ),
                ),
                trailing: Icon(Icons.check),
              )),
               SizedBox(height: 15,), Container(
                height: 64,
                width: 342,
                
                
                decoration: BoxDecoration(
                  
                  color: Color(0xffFFFFFF),
                  border: BoxBorder.all(
                    color: Color(0xff595A58)
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10),
                  )
                ),
                child: ListTile(
                leading:Image.asset('assets/images/us.png',
                height:18 ,
                width: 24,),
                title: Text('English(US)',
                 style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1C1B1F),

                      ),
                ),
                trailing: Icon(Icons.check),
              )),
               SizedBox(height: 15,), Container(
                height: 64,
                width: 342,
                
                
                decoration: BoxDecoration(
                  
                  color: Color(0xffFFFFFF),
                  border: BoxBorder.all(
                    color: Color(0xff595A58)
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10),
                  )
                ),
                child: ListTile(
                leading:Image.asset('assets/images/flag india.png',
                height:18 ,
                width: 24,),
                title: Text('India)',
                 style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1C1B1F),

                      ),
                ),
                trailing: Icon(Icons.check),
              )),
               SizedBox(height: 15,), Container(
                height: 64,
                width: 342,
                
                
                decoration: BoxDecoration(
                  
                  color: Color(0xffFFFFFF),
                  border: BoxBorder.all(
                    color: Color(0xff595A58)
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10),
                  )
                ),
                child: ListTile(
                leading:Image.asset('assets/images/Arabic.png',
                height:18 ,
                width: 24,),
                title: Text('Arabic',
                 style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1C1B1F),

                      ),
                ),
                trailing: Icon(Icons.check),
              )),
               SizedBox(height: 15,), Container(
                height: 64,
                width: 342,
                
                
                decoration: BoxDecoration(
                  
                  color: Color(0xffFFFFFF),
                  border: BoxBorder.all(
                    color: Color(0xff595A58)
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10),
                  )
                ),
                child: ListTile(
                leading:Image.asset('assets/images/French.png',
                height:18 ,
                width: 24,),
                title: Text('French',
                 style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1C1B1F),

                      ),
                ),
                trailing: Icon(Icons.check),
              )),
               SizedBox(height: 15,), Container(
                height: 64,
                width: 342,
                
                
                decoration: BoxDecoration(
                  
                  color: Color(0xffFFFFFF),
                  border: BoxBorder.all(
                    color: Color(0xff595A58)
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10),
                  )
                ),
                child: ListTile(
                leading:Image.asset('assets/images/German.png',
                height:18 ,
                width: 24,),
                title: Text('German',
                 style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1C1B1F),

                      ),
                ),
                trailing: Icon(Icons.check),
              )),
               SizedBox(height: 15,), Container(
                height: 64,
                width: 342,
                
                
                decoration: BoxDecoration(
                  
                  color: Color(0xffFFFFFF),
                  border: BoxBorder.all(
                    color: Color(0xff595A58)
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10),
                  )
                ),
                child: ListTile(
                leading:Image.asset('assets/images/spanish.png',
                height:18 ,
                width: 24,),
                title: Text('Spanish',
                 style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1C1B1F),

                      ),
                ),
                trailing: Icon(Icons.check),
              )),
               
              ]))
    );
  }
}