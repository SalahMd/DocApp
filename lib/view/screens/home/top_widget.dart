import 'package:docdoc/app_images.dart';
import 'package:docdoc/core/constants/text_styles.dart';
import 'package:docdoc/core/functions/dimenesions.dart';
import 'package:docdoc/core/theming/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.screenWidth(context),
      height: 200.h,
      //alignment: Alignment.bottomCenter,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
                width: Dimensions.screenWidth(context),
                height: 170.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: LightAppColors.primaryColor),
                child: Stack(
                  children: [
                    PositionedDirectional(
                        end: 0, child: Image.asset(AppImages.lightRect)),
                    Image.asset(AppImages.lightLine),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.only(start: 18.w, top: 12.h),
                      child: Row(children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Book and\nschedule with\nnearest doctor",
                                style: TextStyles.w50018White(context),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Container(
                                width: 110.w,
                                height: 38.w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(48),
                                    color: LightAppColors.white),
                                child: Text(
                                  "Find nearby",
                                  style: TextStyles.w50012blue(context),
                                ),
                              ),
                            ]),
                      ]),
                    ),
                  ],
                )),
          ),
          PositionedDirectional(
              end: 1, child: Image.asset(AppImages.homePageDoctor)),
        ],
      ),
    );
  }
}
