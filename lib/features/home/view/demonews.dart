import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/features/home/view/widgets/loading_container.dart';
import 'package:news_app/utils/colors.dart';

class Demonews extends StatelessWidget {
  const Demonews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130.h,
        margin: EdgeInsets.symmetric(vertical: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(22.sp),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoadingContainer(height: 120.h, width: 120.w),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.h),
                Row(
                  children: [
                    LoadingContainer(height: 20.h, width: 20.w),
                    SizedBox(width: 10.w),
                    LoadingContainer(height: 20.h, width: 150.w),
                  ],
                ),
                SizedBox(height: 20.h),
                LoadingContainer(
                  height: 20.h,
                  width: 200.w,
                ),
                SizedBox(height: 15.h), // Adjusted to give some spacing
                LoadingContainer(height: 20.h, width: 200.w),
              ],
            ),
          ],
        ));
  }
}
