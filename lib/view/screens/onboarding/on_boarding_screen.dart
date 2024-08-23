import 'package:docdoc/app_images.dart';
import 'package:docdoc/core/constants/text_styles.dart';
import 'package:docdoc/core/functions/dimenesions.dart';
import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/colors/colors.dart';
import 'package:docdoc/view/screens/onboarding/doctor_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.logo),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Docdoc',
                  style: TextStyles.bold20(context),
                )
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            const DoctorStack(),
            SizedBox(height: 18.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: Column(
                children: [
                  Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    style: TextStyles.w40012grey(context),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.pushNamed(Routes.loginScreen);
                    },
                    child: Container(
                      width: Dimensions.screenWidth(context),
                      height: 52.h,
                      margin: EdgeInsets.symmetric(
                        horizontal: 22.w,
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: LightAppColors.primaryColor),
                      child: Text(
                        "Get started",
                        style: TextStyles.w50016White(context),
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    ));
  }
}
