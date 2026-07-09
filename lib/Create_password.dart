import 'package:flutter/material.dart';
import 'package:mini_project/verified_page.dart';

class createpasswordscreen extends StatefulWidget {
  const createpasswordscreen({super.key});

  @override
  State<createpasswordscreen> createState() => _createpasswordscreenState();
}

class _createpasswordscreenState extends State<createpasswordscreen> {
  bool is_obscuretext=true;
  
  bool is_obscuretext2=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: 24,
          vertical: 82,
        ),
        child: Column(
          children: [
            Image.asset('assets/images/coffee.png',
            height:267 ,
            width: 345,),
            SizedBox(height: 53,),
            Text('Create New Password',
            style: TextStyle(
              fontSize:20 ,
              fontWeight:FontWeight.w700,
              color: Color(0xff1C1B1F)
            ),),
            SizedBox(height: 11,),
            Text('Make sure that two password are\n matched',
            style: TextStyle(
              fontSize:16 ,
              fontWeight: FontWeight.w600,
              color: Color(0xff8D8585)
            ),
            textAlign: TextAlign.center,),
            SizedBox(height: 34,),
            Container(
              height: 44,
              width: double.infinity,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  prefixIcon: Icon(Icons.lock_open),
                  hintText: 'New password',
                  suffixIcon: IconButton(onPressed: () {
                     setState(() {
                      is_obscuretext=!is_obscuretext;
              
                    });
                  },  icon:  is_obscuretext==false?Icon(Icons.visibility):Icon(Icons.visibility_off)
          
                  )
                ),
              ),
            ),
              SizedBox(height: 10,),
             Container(
              height: 44,
              width: double.infinity,
               child: TextFormField(
                
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  prefixIcon: Icon(Icons.lock_open),
                  hintText: 'Confirm Password',
                  suffixIcon: IconButton(onPressed: () {
                     setState(() {
                      is_obscuretext2=!is_obscuretext2;
               
                    });
                  }, icon: is_obscuretext==true?Icon(Icons.visibility_off):Icon(Icons.visibility_off))
                ),
                           ),
             ),
              SizedBox(height: 34,),
                Container(
              height: 49,
              width: double.infinity,
             
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                 color: Color(0xffF79C1C),
              ),
              
              child: TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => verified_Screen(),));
                
              }, child: Text('Create',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xffFFFFFF)
              ),)),
            )
            
          ],
        ),
      ),
    );
  }
}