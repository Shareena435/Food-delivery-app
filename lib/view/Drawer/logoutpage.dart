// import 'package:flutter/material.dart';

// class Logoutpage extends StatefulWidget {
//   const Logoutpage({super.key});

//   @override
//   State<Logoutpage> createState() => _LogoutpageState();
// }

// class _LogoutpageState extends State<Logoutpage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mini_project/view/Register_pages/sign_inpage.dart';
//import 'package:mini_project/view/login/Loginpage.dart';

class Logoutpage extends StatefulWidget {
  const Logoutpage({super.key});

  @override
  State<Logoutpage> createState() => _LogoutpageState();
}

class _LogoutpageState extends State<Logoutpage> {

  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();

      if (!mounted) return;

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => sign_inpage(),
        ),
        (route) => false,
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Logout failed: $e"),
        ),
      );
    }
  }

  void showLogoutDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Logout"),
          content: const Text("Are you sure you want to logout?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                logout();
              },
              child: const Text("Logout"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Logout"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: showLogoutDialog,
          child: const Text("Logout"),
        ),
      ),
    );
  }
}