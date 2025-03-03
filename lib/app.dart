import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture_v2/config/router/app_routes_name.dart';
import 'package:getx_clean_architecture_v2/config/themes/app_theme.dart';

import 'config/router/app_pages.dart';
import 'presentation/screens/error_screens/error_screen.dart';
import 'utils/app_translation/app_translation.dart';
import 'utils/resources/app_size.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSize.screenHeight = MediaQuery.of(context).size.height;
    AppSize.screenWidth = MediaQuery.of(context).size.width;

    return GetMaterialApp(
      builder: (context, child) {
        ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
          return ErrorScreen(errorDetails: errorDetails);
        };
        return child!;
      },
      debugShowCheckedModeBanner: false,
      title: "My App",
      translations: AppTranslation(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      initialRoute: AppRoutes.initial,
      getPages: appPages,
      theme: lightTheme,
    );
  }
}
