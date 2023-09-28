import 'package:evoy_test/src/auth/signup_view.dart';
import 'package:evoy_test/src/landing/splash_view.dart';
import 'package:get/get.dart';

abstract class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(name: SplashView.route, page: () => const SplashView()),
    GetPage(
      name: SignupView.route,
      page: () => const SignupView(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 200),
    ),
  ];
}
