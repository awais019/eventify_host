import 'package:eventify_host/controllers/splash.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SplashController(),
      builder: (controller) => Scaffold(
        body: Stack(
          children: [
            Container(
              color: const Color.fromRGBO(95, 25, 242, 1),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(47, 54, 62, 0.32),
                    Color.fromRGBO(25, 26, 27, 1)
                  ],
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FadeTransition(
                      opacity: controller.logoFadeInAnimation!,
                      child: SlideTransition(
                        position: controller.logoSlideAnimation!,
                        child: const Image(
                          image: AssetImage("assets/icons/logo.png"),
                        ),
                      ),
                    ),
                    FadeTransition(
                      opacity: controller.textFadeInAnimation!,
                      child: SlideTransition(
                        position: controller.textSlideAnimation!,
                        child: const Text(
                          "Eventify",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
