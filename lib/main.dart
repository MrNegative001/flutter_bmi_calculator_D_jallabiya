import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/app_themes.dart'; // ✅ Import the theme file
import 'screens/app_body.dart';

void main() {
  runApp(MyApp());
}

class ThemeController extends GetxController {
  var isDarkMode = false.obs;

  void setLightMode() {
    isDarkMode.value = false;
    Get.changeTheme(AppTheme.lightTheme); // ✅ Now it recognizes AppTheme
  }

  void setDarkMode() {
    isDarkMode.value = true;
    Get.changeTheme(AppTheme.darkTheme); // ✅ Now it recognizes AppTheme
  }
}

class MyApp extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme, // ✅ Recognized now
          darkTheme: AppTheme.darkTheme, // ✅ Recognized now
          themeMode: themeController.isDarkMode.value
              ? ThemeMode.dark
              : ThemeMode.light,
          home: HomeScreen(),
        ));
  }
}
