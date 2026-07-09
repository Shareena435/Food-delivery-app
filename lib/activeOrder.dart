import 'package:flutter/material.dart';

class Activeorder extends StatefulWidget {
  const Activeorder({super.key});

  @override
  State<Activeorder> createState() => _ActiveorderState();
}

class _ActiveorderState extends State<Activeorder> {
  bool ischecked=false;
  bool ischecked2=false;
  bool ischecked3=false;
  bool ischecked4=false;
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
                        Icon(Icons.auto_delete_outlined,color: Color(0xffFF0000),)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Align(
            alignment: AlignmentGeometry.center,
            child: Text('Order Summery',
            style: TextStyle(
              fontSize:20 ,
              fontWeight:FontWeight.w600 ,
              color: Color(0xff1C1B1F)
            ),),
          ),
          Divider(),
          SizedBox(
            height: 10,
          ),
          Text('Order ID',
           style: TextStyle(
            fontSize:16 ,
            fontWeight:FontWeight.w600 ,
            color: Color(0xff1C1B1F)
          ),),
           Text('#96572584631455',
           style: TextStyle(
            fontSize:14 ,
            fontWeight:FontWeight.w500 ,
            color: Color(0xff595A58),
          ),),
          SizedBox(height: 10,),
            Text('Date & Time',
           style: TextStyle(
            fontSize:16 ,
            fontWeight:FontWeight.w600 ,
            color: Color(0xff1C1B1F)
          ),),
           Row(
             children: [
               Text('4/2/2024',
               style: TextStyle(
                fontSize:14 ,
                fontWeight:FontWeight.w500 ,
                color: Color(0xff595A58),
                
                         ),),
                         SizedBox(width:18 ,),
                          Text('8:45PM',
               style: TextStyle(
                fontSize:14 ,
                fontWeight:FontWeight.w500 ,
                color: Color(0xff595A58),
                
                         ),),
             ],
           ),
          SizedBox(height: 10,),
            Text('Estimated Delivery Time',
           style: TextStyle(
            fontSize:16 ,
            fontWeight:FontWeight.w600 ,
            color: Color(0xff1C1B1F)
          ),),
           Row(
             children: [
               Text('Delivery Time',
               style: TextStyle(
                fontSize:14 ,
                fontWeight:FontWeight.w500 ,
                color: Color(0xff595A58),
                         ),),
                         
                       SizedBox(width:18 ,),
                          Text('30Min',
               style: TextStyle(
                fontSize:14 ,
                fontWeight:FontWeight.w500 ,
                color: Color(0xff595A58),
                
                         ),),     
               
             ],
           ),
          SizedBox(height: 10,),
            Text('Delivery Address',
           style: TextStyle(
            fontSize:16 ,
            fontWeight:FontWeight.w600 ,
            color: Color(0xff1C1B1F)
          ),),
           Row(
             children: [
               Text('Pick Your Address',
               style: TextStyle(
                
                fontSize:14 ,
                fontWeight:FontWeight.w500 ,
                color: Color(0xff595A58),
                         ),),
                         SizedBox(width: 178,),
                          Text('Edit',
               style: TextStyle(
                
                fontSize:14 ,
                fontWeight:FontWeight.w500 ,
                color: Color(0xffF79C1C),
                         ),),
                         

             ],
           ),
          SizedBox(height: 20,),
             Align(
            alignment: AlignmentGeometry.center,
            child: Text('Payment Method',
            style: TextStyle(
              fontSize:20 ,
              fontWeight:FontWeight.w600 ,
              color: Color(0xff1C1B1F)
            ),),
          ),
          Divider(),
           SizedBox(height: 10,),
           Row(
             children: [
               Checkbox(value: ischecked, onChanged: (value) {
                 setState(() {
                   ischecked=value!;
                 });
               },
                         // checkColor: Color(0xffF79C1C),
               shape: OvalBorder(
                side: BorderSide(
                  color: Color(0xffF79C1C),
                
                )
               ),
               ),
               Text('Cash On Delivery',
                style: TextStyle(
                
                fontSize:14 ,
                fontWeight:FontWeight.w500 ,
                color: Color(0xff595A58),
                         ),
               ),
               SizedBox(width: 35,),
                Checkbox(value: ischecked2, onChanged: (value) {
                 setState(() {
                   ischecked2=value!;
                 });
               },
                         // checkColor: Color(0xffF79C1C),
               shape: OvalBorder(
                side: BorderSide(
                  color: Color(0xffF79C1C),
                
                )
               ),
               ),
               Text('Online Payment',
                style: TextStyle(
                
                fontSize:14 ,
                fontWeight:FontWeight.w500 ,
                color: Color(0xff595A58),
                         ),
               ),
             ],
           ),
           SizedBox(height: 10,),
              SizedBox(height: 20,),
             Align(
            alignment: AlignmentGeometry.center,
            child: Text('Delivery Method',
            style: TextStyle(
              fontSize:20 ,
              fontWeight:FontWeight.w600 ,
              color: Color(0xff1C1B1F)
            ),),
          ),
          Divider(),
           SizedBox(height: 10,),
           Row(
             children: [
               Checkbox(value: ischecked3, onChanged: (value) {
                 setState(() {
                   ischecked3=value!;
                 });
               },
                         // checkColor: Color(0xffF79C1C),
               shape: OvalBorder(
                side: BorderSide(
                  color: Color(0xffF79C1C),
                
                )
               ),
               ),
               Text('Delivery',
                style: TextStyle(
                
                fontSize:14 ,
                fontWeight:FontWeight.w500 ,
                color: Color(0xff595A58),
                         ),
               ),
               SizedBox(width: 35,),
                Checkbox(value: ischecked4, onChanged: (value) {
                 setState(() {
                   ischecked4=value!;
                 });
               },
                         // checkColor: Color(0xffF79C1C),
               shape: OvalBorder(
                side: BorderSide(
                  color: Color(0xffF79C1C),
                
                )
               ),
               ),
               Text('Pick Up',
                style: TextStyle(
                
                fontSize:14 ,
                fontWeight:FontWeight.w500 ,
                color: Color(0xff595A58),
                         ),
               ),
             ],
           ),
        ],
      )
    );
  }
}