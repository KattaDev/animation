import 'package:animation/animation/animation1.dart';
import 'package:animation/home/home_page.dart';
import 'package:animation/intro/introviewpage.dart';
import 'package:animation/mashq/mashq.dart';
import 'package:animation/servises/get_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: (GetService.box.read("isDone") ?? false)
      //     ?  HomePage()
      //     : const IntroViewPage(),
      home: ExamplePage(),
    );
  }
}
