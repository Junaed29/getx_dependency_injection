import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_injection/controller/home_controller.dart';
import 'package:getx_dependency_injection/screen/cart_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeController homeController = Get.find<HomeController>();
  bool login = true;

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
              return Text("User status ${homeController.status.value}");
            }),
            Obx(() {
              print("Button rebuild");
              return ElevatedButton(
                  onPressed: () {
                    homeController.status.value.toLowerCase() == "online"
                        ? homeController.updateStatus("Offline")
                        : homeController.updateStatus("Online");
                  },
                  child: homeController.status.toLowerCase() == "online"
                      ? const Text("Logout")
                      : const Text("Login"));
            }),
            ElevatedButton(
                onPressed: () {
                  homeController.incrementCart();
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
