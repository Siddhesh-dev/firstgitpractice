import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home View'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Get.toNamed(Routes.LOGIN);
          },
          child: const Text(
            'Login',
            style: TextStyle(color: Colors.blue, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
