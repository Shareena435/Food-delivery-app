// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:mini_project/model/menu_items.dart';

// class Menuservice {
//   final String Baseurl =
//       'https://fakerestaurantapi.runasp.net/api/Restaurant/items';
      
//        // get http => null;

//   Future<List<MenuItem>> fetchmenu() async {
//     final response = await http.get(
//       Uri.parse(Baseurl),
//     );

//     print(response.body);
//     print(response.statusCode);

//     if (response.statusCode == 200) {
//       final List data = jsonDecode(response.body);

//       return data
//           .map((item) => MenuItem.fromJson(item))
//           .toList();
//     } else {
//       throw Exception('Failed to fetch menu');
//     }
//   }

// //   // 👇 Put the new code here
// //   Future<Menuitems> fetchproductByid(int id) async {
// //     final response = await http.get(
// //       Uri.parse(Baseurl),
// //     );

// //     if (response.statusCode == 200) {
// //       final List data = jsonDecode(response.body);

// //       final item = data.firstWhere(
// //         (item) => item['itemID'] == id,
// //       );

// //       return Menuitems.fromJson(item);
// //     } else {
// //       throw Exception('Failed to fetch product');
// //     }
// //   }
//  }



import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mini_project/model/menu_items.dart';

class MenuService {
  final String baseUrl =
      'https://fakerestaurantapi.runasp.net/api/Restaurant/items';

  /// 🔹 Fetch all menu items
  Future<List<MenuItem>> fetchMenu() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));

      if (response.statusCode == 200) {
        final List data = jsonDecode(response.body);

        return data.map((item) => MenuItem.fromJson(item)).toList();
      } else {
        throw Exception(
          'Failed to load menu: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception('Error fetching menu: $e');
    }
  }

  /// 🔹 Fetch single item by ID
  // Future<MenuItem> fetchItemById(int id) async {
  //   try {
  //     final response = await http.get(Uri.parse(baseUrl));

  //     if (response.statusCode == 200) {
  //       final List data = jsonDecode(response.body);

  //       final item = data.firstWhere(
  //         (item) => item['itemID'] == id,
  //         orElse: () => null,
  //       );

  //       if (item == null) {
  //         throw Exception('Item not found');
  //       }

  //       return MenuItem.fromJson(item);
  //     } else {
  //       throw Exception(
  //         'Failed to load item: ${response.statusCode}',
  //       );
  //     }
  //   } catch (e) {
  //     throw Exception('Error fetching item: $e');
  //   }
  // }

  // fetchproductByid(int id) async {}
  Future<MenuItem> fetchproductByid(int id) async {
  print("Selected ID : $id");

  final response = await http.get(Uri.parse(baseUrl));

  print(response.statusCode);
  print(response.body);

  if (response.statusCode == 200) {
    final List data = jsonDecode(response.body);

    final item = data.firstWhere(
      (e) => e["itemID"] == id,
    );

    return MenuItem.fromJson(item);
  }

  throw Exception("Item not found");
}
}