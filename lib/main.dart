import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/middleware/auth_middleware.dart';
import 'package:getx/middleware/super_middleware.dart';
import 'package:getx/view/admin.dart';
import 'package:getx/view/home.dart';
import 'package:getx/view/login.dart';
import 'package:getx/view/super.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPreferences;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
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
      home: const LoginPage(),
      initialRoute: "/",
      // getPages: [GetPage(name: "/", page: () => Home(), binding: MyBinding())],
      getPages: [
        GetPage(
            name: "/",
            page: () => const LoginPage(),
            middlewares: [ SuperMiddleware(),AuthMiddleware()]),
        GetPage(name: "/home", page: () => Home()),
        GetPage(name: "/admin", page: () => Admin()),
        GetPage(name: "/super", page: () => Super()),
      ],
    );
  }
}
