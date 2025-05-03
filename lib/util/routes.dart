import 'package:flytech/view/homepage.dart';
import 'package:flytech/view/splashads.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

var routes = [
  GetPage(
    name: '/',
    page: () => Homepage(),
  ),
  GetPage(
    name: '/splashAds',
    page: () => const SplashAds(),
  ),
];
