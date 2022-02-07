import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_injection/controller/home_controller.dart';

class CartScreen extends GetWidget<HomeController> {
  static String cartScreenRouteName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() {
              return Text("Total cart item is ${controller.cart.value}");
            }),
          ],
        ),
      ),
    );
  }
}
