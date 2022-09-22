import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/rebuild_controller.dart';

class ScreenThree extends StatelessWidget {
  ScreenThree({Key? key}) : super(key: key);
  final RebuildController controller = Get.put(RebuildController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Screen Three"), centerTitle: true),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: GetX<RebuildController>(
                  init: RebuildController(),
                  builder: (controller) {
                    print("count 1 rebuild");
                    return Text(
                      "${controller.count1}",
                      style: Theme.of(context).textTheme.headline5,
                    );
                  },
                ),
              ),
              Center(
                child: GetX<RebuildController>(
                  init: RebuildController(),
                  builder: (controller) {
                    print("count 2 rebuild");
                    return Text(
                      "${controller.count2}",
                      style: Theme.of(context).textTheme.headline5,
                    );
                  },
                ),
              ),
              Center(
                child: GetX<RebuildController>(
                  init: RebuildController(),
                  builder: (controller) {
                    print("sum rebuild");
                    return Text(
                      "${controller.sum}",
                      style: Theme.of(context).textTheme.headline5,
                    );
                  },
                ),
              ),
              MaterialButton(
                onPressed: () {
                  controller.increment();
                },
                child: Text("Add one"),
              ),
              MaterialButton(
                  onPressed: () {
                    controller.incrementTwo();
                  },
                  child: Text("Add two"))
            ])));
  }
}
