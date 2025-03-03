import 'package:get/get.dart';
import 'package:getx_clean_architecture_v2/config/router/app_routes_name.dart';
import 'package:getx_clean_architecture_v2/presentation/screens/home_screen.dart';

final appPages = [
  GetPage(
      name: AppRoutes.initial,
      page: () => const HomeScreen()),
];