import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home.dart';
import 'package:getx/page_one.dart';
import 'package:getx/page_three.dart';
import 'package:getx/page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),getPages: [
        GetPage(name: "home", page:() => Home()),
        GetPage(name: "pageone", page:() => PageOne()),
        GetPage(name: "pagetwo", page:() => PageTwo()),
        GetPage(name: "pagethree", page:() => PageThree())
    ],
    );
  }
}
