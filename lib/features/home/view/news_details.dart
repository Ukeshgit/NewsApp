import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:news_app/features/home/model/trending_news_model.dart';
import 'package:news_app/utils/colors.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({super.key, required this.news});
  final Articles news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Container(
                        child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Icon(Icons.arrow_back_ios_new_outlined),
                                Text(
                                  "Back",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 330.h,

                    // color: Colors.red,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.sp),
                      child: Image.network(
                        news.urlToImage!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(news.title!,
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Appcolors.darkFontColor,
                          fontFamily: 'interRegular')),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 10.sp,
                        backgroundColor: Colors.red,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        news.author!,
                        style: TextStyle(
                          color: Appcolors.darkLabelColor,
                          fontFamily: 'interRegular',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(news.description!,
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: Appcolors.darkLabelColor,
                          fontFamily: 'interRegular'))
                ]),
          ),
        ),
      ),
    );
  }
}
