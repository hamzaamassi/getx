import 'package:flutter/material.dart';

class Super extends StatelessWidget {
  Super({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Super Page"),
          centerTitle: true,
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
              Center(
                child: Text("Super")
              ),
            ])));
  }
}
