import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mini_project/controller/menu_controller.dart';
import 'package:mini_project/view/BottomNavigation/Favorite/Search/debounser.dart';
import 'package:mini_project/view/get_menu.dart';
import 'package:mini_project/model/menu_items.dart';
import 'package:mini_project/service/menu_service.dart';


class Searchscreen extends StatefulWidget {
  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  
  Menucontroller menucontroller=Menucontroller();
   late final int menuid;
   
  late Future<List<MenuItem>>menufuture;
  @override
 
   void gotodetailpage(int id){

    //opn getproduct screen with  product id
    Navigator.push(context, MaterialPageRoute(builder:  (context) =>GetMenu(menuid:id) ,));
  }
  final Debouncer _debouncer=Debouncer(milliseconds: 500);
  List<MenuItem>allproducts=[];
  List<MenuItem>filteredproduct=[];
  void Loadproduct()async{
    final data=await MenuService().fetchMenu();
    setState(() {
      allproducts=data;
      filteredproduct=data;
    });
    
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Loadproduct();
    menufuture=menucontroller.getproduct();

  }

  void search(String query){
    final result =allproducts.where((MenuItem){
      return MenuItem.itemName.toLowerCase().contains(query.toLowerCase());

    }).toList();
    setState(() {
      filteredproduct=result;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body: FutureBuilder<List<MenuItem>>(
    future: menufuture,
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }

      if (snapshot.hasError) {
        return Center(
          child: Text('Error: ${snapshot.error}'),
        );
      }

      if (!snapshot.hasData || snapshot.data!.isEmpty) {
        return const Center(
          child: Text('No menu found'),
        );
      }

      final menu = snapshot.data!;

      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 56,
            horizontal: 24,
          ),


      // body: Padding(
      //   padding: EdgeInsetsGeometry.symmetric(
      //     vertical: 79,
      //     horizontal: 23,
      
      //   ),
       // child: SingleChildScrollView(
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
                  onChanged: (value) {
                    _debouncer.run((){
                      search(value);
                    });
                  },
                ),
              ),
              Expanded(child: ListView.builder(
                itemCount: filteredproduct.length,
                itemBuilder: (context,index){
                  final product=filteredproduct[index];
                  return ListTile(
                    onTap: () {
                       gotodetailpage(product.itemID!);
                    },
                    leading: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(10),
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.network(
                          product.imageUrl,
                          fit: BoxFit.cover,
                        )
                      ),
                      
                    ),
                    title: Text(product.itemName),
                    subtitle: Text(product.itemDescription),
                  );
                }
              
              )),
                SizedBox(height: 14,),
               
            ],
           
          ),
        ),
      );
    }
    ));
  }
}