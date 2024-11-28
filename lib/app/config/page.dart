import 'package:get/get.dart';
import 'package:test_todo/app/config/routes_app.dart';
import 'package:test_todo/app/modules/home/home_binding.dart';
import 'package:test_todo/app/modules/home/home_view.dart';
import 'package:test_todo/app/modules/login/login_binding.dart';
import 'package:test_todo/app/modules/login/login_view.dart';

class AppPages {
  AppPages._();

  static const INITIAL = RoutesApp.login;

  static final routes = [
    GetPage(
      name: PathsApp.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: PathsApp.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
