import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/features/home/view/widgets/loading_container.dart';
import 'package:news_app/utils/colors.dart';

class Demopage extends StatelessWidget {
  const Demopage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      width: 280,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(22.sp)),
      child: Column(children: [
        LoadingContainer(height: 200, width: 300),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LoadingContainer(height: 20.h, width: 59.w),
            Expanded(child: LoadingContainer(height: 15.h, width: 59.w))
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        LoadingContainer(height: 20.h, width: double.infinity),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Expanded(child: LoadingContainer(height: 30.h, width: 30.w)),
            SizedBox(
              width: 10.w,
            ),
            Expanded(child: LoadingContainer(height: 20.h, width: 250.w)),
          ],
        ),
        SizedBox(
          height: 10.h,
        )
      ]),
    );
  }
}
