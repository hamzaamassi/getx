import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/home_controller.dart';

class ScreenOne extends StatelessWidget {
  ScreenOne({Key? key}) : super(key: key);
  // final c = Get.lazyPut(() => HomeController());

  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Screen One"), centerTitle: true),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              IconButton(
                onPressed: () {
                  controller.increment();
                },
                icon: Icon(
                  Icons.add,
                  size: 40,
                ),
              ),
              Center(
                child: GetBuilder<HomeController>(
                    builder: (controller) => Text(
                          "${controller.counter.value}",
                          style: TextStyle(fontSize: 30),
                        )),
              ),
              IconButton(
                  onPressed: () {
                    controller.decrement();
                  },
                  icon: Icon(
                    Icons.remove,
                    size: 40,
                  ))
            ])));
  }
}
