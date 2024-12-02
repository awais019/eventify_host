import 'package:eventify_host/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<Offset>? textSlideAnimation;
  Animation<double>? textFadeInAnimation;

  Animation<Offset>? logoSlideAnimation;
  Animation<double>? logoFadeInAnimation;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    logoSlideAnimation = Tween<Offset>(
      begin: const Offset(0, -0.5),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: animationController!,
        curve: Curves.easeInOut,
      ),
    );

    textSlideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.5),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: animationController!,
        curve: Curves.easeInOut,
      ),
    );

    logoFadeInAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: animationController!,
        curve: Curves.easeInOut,
      ),
    );

    textFadeInAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: animationController!,
        curve: Curves.easeInOut,
      ),
    );
    animationController!.addStatusListener(navigateToNext);
    animationController!.forward();
  }

  void navigateToNext(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      Get.offAllNamed(kOnBoardingRoute);
    }
  }

  @override
  void dispose() {
    animationController!.removeStatusListener(navigateToNext);
    animationController!.dispose();
    super.dispose();
  }
}
