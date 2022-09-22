import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/main.dart';

class Admin extends StatelessWidget {
  Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Admin Page"),
          centerTitle: true,
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: MaterialButton(
                  color: Colors.red,
                  onPressed: () {
                    sharedPreferences!.clear();
                    Get.offNamed("/");
                  },
                  textColor: Colors.white,
                  child: const Text("sign out"),
                ),
              ),
            ])));
  }
}

