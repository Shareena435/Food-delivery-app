
import 'package:mini_project/model/menu_items.dart';
import 'package:mini_project/service/menu_service.dart';

class Menucontroller {
  //create an instance of  product services
  final MenuService service=MenuService();


   //fetch  and return all products
  Future<List<MenuItem>>getproduct()async{
    
 // call the service method to get all the products
    return await service.fetchMenu();
  }
  
  // Future<Menuitems>getproductByid(int id)async{
  //  // call the  service method to get product by its Id
  //   return await service.fetchproductByid(id);
  // }
   Future<MenuItem>getproductByid(int id)async{
   // call the  service method to get product by its Id
    return await service.fetchproductByid(id);
  }
}
