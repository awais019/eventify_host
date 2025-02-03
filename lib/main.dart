import 'package:eventify_host/utils/constants.dart';
import 'package:eventify_host/utils/routes_management.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: kSplashRoute,
      getPages: RoutesManagement.getRoutes(),
      theme: ThemeData(
        fontFamily: "Product Sans",
        colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: const Color.fromRGBO(95, 25, 242, 1),
          onPrimary: Colors.white,
          secondary: const Color.fromRGBO(45, 57, 78, 1),
          onSecondary: Colors.white,
          error: Colors.red.shade400,
          onError: Colors.white,
          surface: const Color.fromRGBO(240, 240, 240, 1),
          onSurface: Colors.black,
          tertiary: const Color.fromRGBO(171, 144, 250, 1),
        ),
      ),
    );
  }
}
