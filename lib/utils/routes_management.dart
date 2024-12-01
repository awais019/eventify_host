import 'package:eventify_host/controllers/splash.controller.dart';
import 'package:eventify_host/pages/splash.dart';

import 'package:eventify_host/utils/constants.dart';

import 'package:get/get.dart';

class RoutesManagement {
  static List<GetPage> getRoutes() {
    return [
      GetPage(
        name: kSplashRoute,
        page: () => const SplashScreen(),
        binding: BindingsBuilder(() => SplashController()),
      )
    ];
  }
}
