import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/page_one.dart';
import 'package:getx/page_three.dart';
import 'package:getx/page_two.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Get.to(PageOne());
                },
                child: const Text("Page One"),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Get.to(PageTwo());
                },
                child: const Text("Page Two"),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Get.to(PageThree());
                  // Get.off(PageThree()); //don't back
                },
                child: const Text("Page Three"),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Get.back();
                },
                child:Text("Back"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
