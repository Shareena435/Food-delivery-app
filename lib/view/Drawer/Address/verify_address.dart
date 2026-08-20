import 'package:flutter/material.dart';
import 'package:mini_project/view/Drawer/Payments/payment_method.dart';

class VerifyAddress extends StatefulWidget {
  const VerifyAddress({super.key});

  @override
  State<VerifyAddress> createState() => _VerifyAddressState();
}

class _VerifyAddressState extends State<VerifyAddress> {
  TextEditingController namecontroller=TextEditingController();
   TextEditingController flateNumcontroller=TextEditingController();
    TextEditingController floorNumcontroller=TextEditingController();
     // ignore: non_constant_identifier_names
     TextEditingController Buildingnamecontroller=TextEditingController();
      TextEditingController phonenumcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
                   body: DefaultTabController(length: 3, child: 
      Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: 24,
          vertical: 58,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        Text('Add New Address',
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
                SizedBox(
                  height: 17,
                ),
                Image.asset('assets/images/Frame 202.png',
                width: 345,
                height: 129,),
                 SizedBox(
                  height: 10,
                ),
                Text('Address Type',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff595A58),
                        ),),
                          SizedBox(
                  height: 10,
                ),

               TabBar(tabs: [
                Container(

                  height: 41,
                  width: 105,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xffDFDFDF)
                  ),
                  child: Align(alignment: AlignmentGeometry.center,child: Text('House',
                  style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                         // color: Color(0xff8D8585),
                        ),),
                  ),
                ),
              //  SizedBox(height: 15,),
                 Container(
                  height: 41,
                  width: 105,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xffDFDFDF)
                  ),
                  child: Align(alignment: AlignmentGeometry.center,child: Text('Office',
                  style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          //color: Color(0xff8D8585),
                        ),),
                  ),
                ),
              //  SizedBox(height: 15,),
                 Container(
                  height: 41,
                  width: 105,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xffDFDFDF)
                  ),
                  child: Align(alignment: AlignmentGeometry.center,child: Text('Other',
                  style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          //color: Color(0xff8D8585),
                        ),),
                  ),
                ),
                
                //SizedBox(height: 15,)
               ],
                dividerHeight: 0,
            splashFactory: NoSplash.splashFactory,
              overlayColor: WidgetStateProperty.all(Colors.transparent),
             unselectedLabelColor: Color(0xff8D8585),
          // isScrollable: true,
          labelColor: Color(0xffFFFFFF),
         // automaticIndicatorColorAdjustme
         //nt: true,
         
              indicator: BoxDecoration(
              //  color: Color(0xff919EDF),
              //  borderRadius: BorderRadius.all(Radius.circular(10))
              color: null,

              ),
              
            
           
        ),
        SizedBox(height: 12,),
        Text('Full Name',
         style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        color: Color(0xfff595A58),
                        ),
        ),
        SizedBox(height: 10,),
          Container(
            width: 346,
            height: 41,
            child: TextFormField(
              controller: namecontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff726969)
                  ),
                 borderRadius: BorderRadius.all(Radius.circular(10)) 
                )
              ),
            ),
          ),
           SizedBox(height: 12,),
        Text('House/Flat Number',
         style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        color: Color(0xfff595A58),
                        ),
        ),
        SizedBox(height: 10,),
          Container(
            width: 346,
            height: 41,
            child: TextFormField(
              controller: flateNumcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff726969)
                  ),
                 borderRadius: BorderRadius.all(Radius.circular(10)) 
                )
              ),
            ),
          ),
           SizedBox(height: 12,),
        Text('Floor Number',
         style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        color: Color(0xfff595A58),
                        ),
        ),
        SizedBox(height: 10,),
          Container(
            width: 346,
            height: 41,
            child: TextFormField(
              controller: floorNumcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff726969)
                  ),
                 borderRadius: BorderRadius.all(Radius.circular(10)) 
                )
              ),
            ),
          ),
           SizedBox(height: 12,),
        Text('Building Name',
         style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        color: Color(0xfff595A58),
                        ),
        ),
        SizedBox(height: 10,),
          Container(
            width: 346,
            height: 41,
            child: TextFormField(
              controller: Buildingnamecontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff726969)
                  ),
                 borderRadius: BorderRadius.all(Radius.circular(10)) 
                )
              ),
            ),
          ),
    
           SizedBox(height: 12,),
        Text('Contact Number',
         style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        color: Color(0xfff595A58),
                        ),
        ),
        SizedBox(height: 10,),
          Container(
            width: 346,
            height: 41,
            child: TextFormField(
              controller: phonenumcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff726969)
                  ),
                 borderRadius: BorderRadius.all(Radius.circular(10)) 
                )
              ),
            ),
          ),
          SizedBox(height: 21,),
                            Container(
              height: 49,
              width: double.infinity,
             
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                 color: Color(0xffF79C1C),
              ),
              
              child: TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Paymentmethod(),));
                
              }, child: Text('Verify Address',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xffFFFFFF)
              ),)),
            )
        ],
        ),
      ),)
    );
  }
}