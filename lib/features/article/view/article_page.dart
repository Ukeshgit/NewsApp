import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/common/widgets/news_widget.dart';
import 'package:news_app/features/home/controller/news_for_you_controller.dart';
import 'package:news_app/features/home/model/news_for_you_model.dart';
import 'package:news_app/utils/colors.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    NewsForYouController newscontroller = Get.put(NewsForYouController());
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                Stack(
                  children: [
                    // Flexible widget for TextField to expand
                    Expanded(
                      child: Container(
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(16.sp),
                        ),
                        child: TextField(
                          cursorColor: Appcolors.darkLabelColor,
                          decoration: InputDecoration(
                            hintText: "Search News...",
                            hintStyle: TextStyle(color: Colors.white),
                            fillColor: Appcolors.darkDivColor,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.sp),
                              borderSide:
                                  BorderSide.none, // Removes default border
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.sp),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox added for space between the TextField and the button

                    Positioned(
                      right: 0,
                      child: Container(
                        width: 50.w, // Adjust width as needed
                        height: 50.h, // Match height for uniformity
                        decoration: BoxDecoration(
                          color: Appcolors.darkPrimaryColor,
                          borderRadius: BorderRadius.circular(12.sp),
                        ),
                        child: Icon(
                          Icons
                              .search, // Add an icon to make it a search button
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Obx(() {
                  if (newscontroller.isLoading.value) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return NewsWidget(
                        title: newscontroller.newsdetails[index].title!,
                        date: newscontroller.newsdetails[index].publishedAt!,
                        author: newscontroller.newsdetails[index].author ??
                            "Someone",
                        imageUrl: newscontroller
                                .newsdetails[index].urlToImage ??
                            "https://www.reuters.com/resizer/v2/RZKFNIHPORMWVHKDBTJPUIHVHQ.jpg?auth=80ac7c9e54f528201dabfb2caa0fee533e4ea7f76223b18d7170f0bc9022b681&width=1920&quality=80",
                      );
                    },
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
