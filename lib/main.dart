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
    );
  }
}
