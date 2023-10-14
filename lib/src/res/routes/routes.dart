import 'package:get/get.dart';
import 'package:getx_with_mvvm/src/res/routes/routes_name.dart';
import '../../view/login/login_view.dart';
import '../../view/splash/splash_view.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage(
      name: Routes.splashView,
     page: () => SplashView(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ),

    GetPage(
      name: Routes.loginView,
      page: () => const LoginView(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ),
  ];
}
