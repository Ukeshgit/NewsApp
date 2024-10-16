import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:news_app/features/home/controller/bottom_navigation_controller.dart';
import 'package:news_app/utils/colors.dart';

class HomePageController extends StatelessWidget {
  const HomePageController({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavigationController bottomNavigationController =
        Get.put(BottomNavigationController());
    return Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(99.sp),
                  color: Theme.of(context).colorScheme.primary),
              width: 180.w,
              height: 60.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(() {
                    return GestureDetector(
                      onTap: () {
                        bottomNavigationController.index.value = 0;
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 400),
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            color: bottomNavigationController.index.value == 0
                                ? Appcolors.darkPrimaryColor
                                : null,
                            borderRadius: BorderRadius.circular(100.sp)),
                        child: Icon(
                          Icons.home,
                          color: bottomNavigationController.index.value == 0
                              ? Appcolors.darkLabelColor
                              : null,
                        ),
                      ),
                    );
                  }),
                  Obx(() {
                    return GestureDetector(
                      onTap: () {
                        bottomNavigationController.index.value = 1;
                      },
                      child: AnimatedContainer(
                        duration: Duration(microseconds: 400),
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            color: bottomNavigationController.index.value == 1
                                ? Appcolors.darkPrimaryColor
                                : null,
                            borderRadius: BorderRadius.circular(100.sp)),
                        child: Icon(
                          Icons.book,
                          color: bottomNavigationController.index.value == 1
                              ? Appcolors.darkLabelColor
                              : null,
                        ),
                      ),
                    );
                  }),
                  Obx(() {
                    return GestureDetector(
                      onTap: () {
                        bottomNavigationController.index.value = 2;
                      },
                      child: AnimatedContainer(
                        duration: Duration(microseconds: 400),
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            color: bottomNavigationController.index.value == 2
                                ? Appcolors.darkPrimaryColor
                                : null,
                            borderRadius: BorderRadius.circular(100.sp)),
                        child: Icon(
                          Icons.settings,
                          color: bottomNavigationController.index.value == 2
                              ? Appcolors.darkLabelColor
                              : null,
                        ),
                      ),
                    );
                  }),
                ],
              ),
            )
          ],
        ),
        body: Obx((() {
          return bottomNavigationController
              .pages[bottomNavigationController.index.value];
        })));
  }
}
