import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/counter_controller.dart';
import 'package:getx/profile_screen.dart';


class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  final CounterController _counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('${_counterController.counter}')),
            ElevatedButton(
                onPressed: () {
                  //Replace
                  Get.off(()=> const ProfileScreen());
                }, child: const Text('Go to Profile')),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(onPressed: () {
              //Navigator.pop(context);
              Get.back();
            }, child: const Text('Back')),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(onPressed: () {
              _counterController.increment();
            }, child: const Text('Increment')),
          ],
        ),
      ),
    );
  }
}
