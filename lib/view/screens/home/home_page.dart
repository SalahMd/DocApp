import 'package:docdoc/app_images.dart';
import 'package:docdoc/core/constants/text_styles.dart';
import 'package:docdoc/core/theming/colors/colors.dart';
import 'package:docdoc/view/screens/home/top_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  List<Map> cat = [
    {"name": "General", "image": AppImages.general},
    {"name": "Pediatric", "image": AppImages.pediatric},
    {"name": "Radiology", "image": AppImages.radiology},
    {"name": "Neurologic", "image": AppImages.neurologic},
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 12.h, left: 16.w, right: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi, Omar!",
                              style: TextStyles.w70018(context),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              "How Are you Today?",
                              style: TextStyles.w40012grey(context),
                            ),
                          ],
                        ),
                        Container(
                          width: 48.w,
                          height: 48.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(48),
                            color: LightAppColors.lightWhite,
                          ),
                          child: Icon(
                            Icons.notifications_outlined,
                            size: 24.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    TopWidget(),
                    SizedBox(height: 24.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Doctor Speciality',
                          style: TextStyles.w50018(context),
                        ),
                        Text(
                          "See all",
                          style: TextStyles.w50012blue(context),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100.h,
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    //physics: NeverScrollableScrollPhysics(),
                    itemCount: cat.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return Container(
                        margin: EdgeInsetsDirectional.symmetric(horizontal: 16),
                        width: 75.sp,
                        height: 90.sp,
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Container(
                              width: 65.sp,
                              height: 65.sp,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: LightAppColors.categories),
                              child: Image.asset(cat[index]['image']),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(
                              cat[index]['name'],
                              style: TextStyles.w50012(context),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 22.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommendation Doctor',
                      style: TextStyles.w50018(context),
                    ),
                    Text(
                      "See all",
                      style: TextStyles.w50012blue(context),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
