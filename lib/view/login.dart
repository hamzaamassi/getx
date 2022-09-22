import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
          centerTitle: true,
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                  child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    sharedPreferences!.setString("role", "user");
                    Get.offNamed("home");
                  },
                  child: const Text(
                    "Login user",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              )),
              Center(
                  child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    sharedPreferences!.setString("role", "admin");
                    Get.offNamed("admin");
                  },
                  child: const Text(
                    "Login Admin",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              )),
            ])));
  }
}
