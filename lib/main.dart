import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:news_app/features/home/controller/bottom_navigation_controller.dart';
import 'package:news_app/features/home/controller/home_page_controller.dart';
import 'package:news_app/features/home/view/Demopage.dart';
import 'package:news_app/features/home/view/demonews.dart';
import 'package:news_app/features/home/view/homepage.dart';
import 'package:news_app/features/home/view/widgets/loading_container.dart';
import 'package:news_app/utils/controller/theme_controller.dart';
import 'package:news_app/utils/theme.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController controller = Get.put(ThemeController());

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => Obx(() {
        return GetMaterialApp(
          darkTheme: darkTheme,
          theme: lightTheme,
          themeMode:
              controller.darktheme.value ? ThemeMode.light : ThemeMode.dark,
          home: child,
          debugShowCheckedModeBanner: false,
        );
      }),
      // child: HomePageController(),
      child: Homepage(),
    );
  }
}
