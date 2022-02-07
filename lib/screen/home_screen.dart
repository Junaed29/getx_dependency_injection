import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_injection/controller/home_controller.dart';
import 'package:getx_dependency_injection/screen/cart_screen.dart';

class HomeScreen extends GetWidget<HomeController> {
  //static String homeScreenRouteName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() {
              print("User status rebuild");
              return Text("User status ${controller.status.value}");
            }),
            Obx(() {
              print("Button rebuild");
              return ElevatedButton(
                  onPressed: () {
                    controller.status.value.toLowerCase() == "online"
                        ? controller.updateStatus("Offline")
                        : controller.updateStatus("Online");
                  },
                  child: controller.status.toLowerCase() == "online"
                      ? const Text("Logout")
                      : const Text("Login"));
            }),
            ElevatedButton(
                onPressed: () {
                  controller.incrementCart();
                },
                child: Text("Cart incriment")),
            ElevatedButton(
                onPressed: () {
                  Get.to(CartScreen());
                },
                child: Text("Go to Cart page"))
          ],
        ),
      ),
    );
  }
}
