import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // push and remove until
                  Get.offAll(()=> const HomeScreen());
                }, child: const Text('Go to Home')),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Back')),
          ],
        ),
      ),
    );
  }
}
