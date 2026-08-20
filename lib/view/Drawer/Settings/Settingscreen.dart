import 'package:flutter/material.dart';
import 'package:mini_project/view/Drawer/Settings/Laungage.dart';

class Settingscreen extends StatefulWidget {
  const Settingscreen({super.key});

  @override
  State<Settingscreen> createState() => _SettingscreenState();
}

class _SettingscreenState extends State<Settingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(
         padding: EdgeInsetsGeometry.symmetric(
          horizontal: 24,
          vertical: 62
         ),
         child: Column(
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
                      Text('Settings',
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
              SizedBox(height: 63),
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
                leading: Icon(Icons.enhanced_encryption_outlined),
                title: Text('Change Password',
                 style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1C1B1F),

                      ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              )),
              SizedBox(height: 13,), InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Laungage(),));
                },
                child: Container(
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
                  leading: Icon(Icons.comment_bank_outlined),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Language',
                       style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1C1B1F),
                      
                            ),
                            
                      ),
                      InkWell(
                        onTap: () {
                          
                        },
                        child: Container(
                          height: 21,
                           width: 70,
                          decoration: BoxDecoration(
                            color: Color(0xffDCDCDC),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Text('English',
                           style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff595A58),
                        
                              ),
                          textAlign: TextAlign.center,),
                        ),
                      )
                
                    ],
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                )),
              ),
              SizedBox(height: 13,), Container(
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
                leading: Icon(Icons.edit_notifications_outlined),
                title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Notification',
                     style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff1C1B1F),
                    
                          ),
                    ),

                         InkWell(
                          onTap: () {
                            
                          },
                           child: Container(
                                                 height: 21,
                                                  width: 41,
                                                 decoration: BoxDecoration(
                                                   color: Color(0xffDCDCDC),
                                                   borderRadius: BorderRadius.all(Radius.circular(10))
                                                 ),
                                                 child: Text('On',
                                                  style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff595A58),
                                               
                            ),
                                                 textAlign: TextAlign.center,),
                                               ),
                         )


                  ],
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              )),
              SizedBox(height: 13,), Container(
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
                leading: Icon(Icons.dark_mode_outlined),
                title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Dark Mode',
                     style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff1C1B1F),
                    
                          ),
                    ),

                     InkWell(
                      onTap: () {
                       
                      },
                       child: Container(
                       height: 21,
                       width: 41,
                        decoration: BoxDecoration(
                          color: Color(0xffDCDCDC),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Text('Off',
                         style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff595A58),
                                           
                            ),
                        textAlign: TextAlign.center,),
                                           ),
                     )



                  ],
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              )),
              SizedBox(height: 13,), Container(
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
                leading: Icon(Icons.pattern),
                title: Text('Rate App',
                 style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1C1B1F),

                      ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              )),
              SizedBox(height: 13,), Container(
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
                leading: Icon(Icons.auto_delete_outlined),
                title: Text('Delete Account',
                 style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1C1B1F),

                      ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              )),
              SizedBox(height: 13,),

              ])),
    );
  }
}