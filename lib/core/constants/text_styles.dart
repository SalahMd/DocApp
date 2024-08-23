import 'package:docdoc/core/theming/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TextStyles {
  static TextStyle _getCustomTextStyle(double fontSize) {
    return TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold);
  }

  static TextStyle bold17(BuildContext context) => _getCustomTextStyle(17.sp);
  static TextStyle bold20(BuildContext context) => _getCustomTextStyle(20.sp);
  static TextStyle w50017(BuildContext context) => _getCustomTextStyle(17.sp);
  static TextStyle w50015(BuildContext context) => _getCustomTextStyle(15.sp);
  static TextStyle w50012(BuildContext context) => _getCustomTextStyle(12.sp);
  static TextStyle w40012grey(BuildContext context) => TextStyle(
      color: Colors.grey[700], fontSize: 12.sp, fontWeight: FontWeight.w500);
      static TextStyle bold32blue(BuildContext context) => TextStyle(
      color: LightAppColors.primaryColor, fontSize: 24.sp, fontWeight: FontWeight.bold);
            static TextStyle bold24blue(BuildContext context) => TextStyle(
      color: LightAppColors.primaryColor, fontSize: 32.sp, fontWeight: FontWeight.bold);
  static TextStyle w40013grey(BuildContext context) => TextStyle(
      color: Colors.grey[700], fontSize: 13.sp, fontWeight: FontWeight.w400);
  static TextStyle w40014grey(BuildContext context) => TextStyle(
      color: Colors.grey[700], fontSize: 14.sp, fontWeight: FontWeight.w500);
  static TextStyle w50013grey(BuildContext context) => TextStyle(
      color: Colors.grey[700], fontSize: 13.sp, fontWeight: FontWeight.w500);
        static TextStyle w50012blue(BuildContext context) => TextStyle(
      color: LightAppColors.primaryColor, fontSize: 12.sp, fontWeight: FontWeight.w500);

  static TextStyle w40010White(BuildContext context) => TextStyle(
        color: Colors.white,
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
      );

  static TextStyle w50016White(BuildContext context) => TextStyle(
        color: Colors.white,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle w50011White(BuildContext context) => TextStyle(
        color: Colors.white,
        fontSize: 10.sp,
        fontWeight: FontWeight.w500,
      );
}
