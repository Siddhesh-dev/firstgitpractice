import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginView'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onHorizontalDragUpdate: (details) {
            int sensitivity = 0;
            if (details.delta.dx > sensitivity) {
              // Right Swipe
              print('Rights swipe');
            } else if (details.delta.dx < -sensitivity) {
              //Left Swipe
              print('Left swipe');
            }
          },
          onVerticalDragUpdate: (details) {
            int sensitivity = 0;
            if (details.delta.dy > sensitivity) {
              // Down Swipe
              print('Down swipe');
            } else if (details.delta.dy < -sensitivity) {
              // Up Swipe
              print('Up swipe');
            }
          },
          child: CachedNetworkImage(
            imageUrl:
                "https://www.google.co.in/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png",
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
