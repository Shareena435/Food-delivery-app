


import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mini_project/view/BottomNavigation/Bottomnavigation.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();

  bool obscureText2 = true;
  bool isSaving = false;

  final user = FirebaseAuth.instance.currentUser!;

  // Profile image
  File? profileImage;
  final ImagePicker picker = ImagePicker();

  @override
  void dispose() {
    namecontroller.dispose();
    emailcontroller.dispose();
    phonecontroller.dispose();
    super.dispose();
  }

  // Pick image from gallery
  Future<void> pickImage() async {
    try {
      final XFile? image = await picker.pickImage(
        source: ImageSource.gallery,
      );

      if (image != null) {
        setState(() {
          profileImage = File(image.path);
        });
      }
    } catch (e) {
      print("Error selecting image: $e");

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Error selecting image: $e"),
        ),
      );
    }
  }

  // Save profile details
  Future<void> saveProfile() async {
    try {
      setState(() {
        isSaving = true;
      });

      await FirebaseFirestore.instance
          .collection('userdetails')
          .doc(user.uid)
          .update({
        'name': namecontroller.text.trim(),
        'email': emailcontroller.text.trim(),
        'phone': phonecontroller.text.trim(),
      });

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Profile updated successfully',
            style: TextStyle(
              color: Colors.green,
            ),
          ),
        ),
      );

      print("Current User UID: ${user.uid}");
      print("Name: ${namecontroller.text}");
      print("Email: ${emailcontroller.text}");
      print("Phone: ${phonecontroller.text}");
    } catch (e) {
      print("Error updating profile: $e");

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: $e'),
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          isSaving = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<DocumentSnapshot>(
        future: FirebaseFirestore.instance
            .collection('userdetails')
            .doc(user.uid)
            .get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text(
                "Error: ${snapshot.error}",
              ),
            );
          }

          if (!snapshot.hasData || !snapshot.data!.exists) {
            print("Current User UID: ${user.uid}");

            return const Center(
              child: Text('No Profile Found'),
            );
          }

          final data =
              snapshot.data!.data() as Map<String, dynamic>;

          // Get data from Firestore
          namecontroller.text = data['name'] ?? '';
          emailcontroller.text = data['email'] ?? '';
          phonecontroller.text = data['phone'] ?? '';

          print("Current User UID: ${user.uid}");
          print("Firestore Data: $data");

          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 62,
            ),
            child: Column(
              children: [
                // =========================
                // BACK BUTTON
                // =========================
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Bottomnavigationscreen(),
                      ),
                    );
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Color(0xffF79C1C),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24.5),

                // =========================
                // PROFILE IMAGE
                // =========================
                GestureDetector(
                  onTap: pickImage,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 55,
                        backgroundImage: profileImage != null
                            ? FileImage(profileImage!)
                            : const AssetImage(
                                'assets/images/person.png',
                              ) as ImageProvider,
                      ),

                      // Camera icon
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: const BoxDecoration(
                            color: Color(0xffF79C1C),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 56),

                // =========================
                // NAME
                // =========================
                SizedBox(
                  height: 44,
                  width: 346,
                  child: TextFormField(
                    controller: namecontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.person_outline,
                      ),
                      hintText: 'Name',
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // =========================
                // EMAIL
                // =========================
                SizedBox(
                  height: 44,
                  width: 346,
                  child: TextFormField(
                    controller: emailcontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      hintText: 'Email',
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // =========================
                // PHONE
                // =========================
                SizedBox(
                  height: 44,
                  width: 346,
                  child: TextFormField(
                    controller: phonecontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.phone,
                      ),
                      hintText: 'Phone number',
                    ),
                  ),
                ),

                const SizedBox(height: 56),

                // =========================
                // SAVE BUTTON
                // =========================
                Container(
                  height: 49,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffF79C1C),
                  ),
                  child: TextButton(
                    onPressed: isSaving
                        ? null
                        : () async {
                            await saveProfile();
                          },
                    child: isSaving
                        ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : const Text(
                            'Save',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}