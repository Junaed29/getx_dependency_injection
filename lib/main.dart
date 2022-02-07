import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/main_binding.dart';
import 'screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MainBinding(),
      // getPages: [
      //   GetPage(
      //     name: HomeScreen.homeScreenRouteName,
      //     page: () => HomeScreen(),
      //   ),
      //   GetPage(
      //     name: CartScreen.cartScreenRouteName,
      //     page: () => CartScreen(),
      //   ),
      // ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
