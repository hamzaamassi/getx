import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/main.dart';

class SuperMiddleware extends GetMiddleware {
  @override
  // int? get priority => 1;

  bool myvar = true;

  @override
  RouteSettings? redirect(String? route) {
    if (myvar == true) return const RouteSettings(name: "super");
     return const RouteSettings(name: "login");
  }
}
