import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/main.dart';
import 'package:getx/utils/my_binding.dart';
import 'package:getx/view/screen_four.dart';
import 'package:getx/view/screen_one.dart';
import 'package:getx/view/screen_three.dart';
import 'package:getx/view/screen_two.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
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
    /*body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: MaterialButton(
                  color: Colors.red,
                  onPressed: () {
                    Get.to(() => ScreenOne(), binding: MyBinding());
                  },
                  textColor: Colors.white,
                  child: const Text("Screen One"),
                ),
              ),
              Center(
                child: MaterialButton(
                  color: Colors.red,
                  onPressed: () {
                    Get.to(() => ScreenTwo(),binding: MyBinding());
                  },
                  textColor: Colors.white,
                  child: const Text("Screen Two"),
                ),
              ),
               Center(
                child: MaterialButton(
                  color: Colors.red,
                  onPressed: () {
                    Get.to(ScreenThree());
                  },
                  textColor: Colors.white, child: const Text("Screen Three"),
                ),
              ),
              Center(
                child: MaterialButton(
                  color: Colors.red,
                  onPressed: () {
                    Get.to(ScreenFour());
                  },
                  textColor: Colors.white, child: const Text("Screen Four"),
                ),
              ),
            ])));*/
  }
}

/*class Home extends StatelessWidget {
  Home({super.key});

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
          centerTitle: true,
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            controller.increment();
                          },
                          icon: const Icon(Icons.add, size: 30)),
                      Center(
                          child: Text("${controller.counter.value}",
                              style: const TextStyle(fontSize: 20))),
                      IconButton(
                          onPressed: () {
                            controller.decrement();
                          },
                          icon: const Icon(Icons.remove, size: 30))
                    ],
                  ))
            ])));
  }
}*/
/*class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
          centerTitle: true,
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              GetX<HomeController>(
                  init: HomeController(),
                  builder: (controller) =>
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                controller.increment();
                              },
                              icon: const Icon(Icons.add, size: 30)),
                          Center(
                              child: Text("${controller.counter}",
                                  style: const TextStyle(fontSize: 20))),
                          IconButton(
                              onPressed: () {
                                controller.decrement();
                              },
                              icon: const Icon(Icons.remove, size: 30))
                        ],
                      ))
            ])));
  }
}
*/
/*class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
          centerTitle: true,
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              GetBuilder<HomeController>(
                  init: HomeController(),
                  builder: (controller) =>
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                controller.increment();
                              },
                              icon: const Icon(Icons.add, size: 30)),
                          Center(
                              child: Text("${controller.counter}",
                                  style: const TextStyle(fontSize: 20))),
                          IconButton(
                              onPressed: () {
                                controller.decrement();
                              },
                              icon: const Icon(Icons.remove, size: 30))
                        ],
                      ))
            ])));
  }
}
*/
