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
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 0.48),
              fontSize: 12,
              fontWeight: FontWeight.bold,
              height: 1.5,
              letterSpacing: 0.24,
            ),
            fillColor: const Color.fromRGBO(49, 62, 85, 0.78),
            filled: true,
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(90, 149, 250, 1),
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red.shade400,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red.shade400,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
          )),
    );
  }
}
