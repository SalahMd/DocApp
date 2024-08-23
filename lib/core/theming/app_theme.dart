import 'package:docdoc/core/theming/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppTheme {
  static var darkTheme = ColorScheme.dark(
      primary: DarkAppColors.primaryColor,
      onSecondary: Colors.white,
      surfaceTint: Colors.black,
      primaryContainer: DarkAppColors.white,
      onPrimaryContainer: Color.fromARGB(255, 38, 31, 31),
      background: Colors.grey[900]!,
      surface: Colors.black.withOpacity(0.2),
      onSurface: Color(0xFFF3F3F3),
      onBackground: Colors.black.withOpacity(0.3)

      );

  static ColorScheme lightTheme = ColorScheme.light(
    primary: LightAppColors.primaryColor,
    primaryContainer: LightAppColors.white,
    onSecondary: Colors.black,
    // background: LightAppColors.backGround,

    // onBackground: LightAppColors.whiteColor,
    // // //for date picker
    // surface: LightAppColors.whiteColor,
    // onSurface: LightAppColors.blackColor,
  );
  static final light = ThemeData(
      useMaterial3: true,
      colorScheme: lightTheme,
      textTheme: TextTheme(
        headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            fontFamily: "PlayfairDisplay"),
        headlineMedium: TextStyle(
            color: LightAppColors.white,
            fontWeight: FontWeight.bold,
            fontSize: 21.sp,
            fontFamily: "PlayfairDisplay"),
        bodyLarge: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 17.sp, height: 1.5),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.sp,
        ),
      ));
  static final dark = ThemeData(
      useMaterial3: true,
      colorScheme: darkTheme,
      textTheme: TextTheme(
        headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            fontFamily: "PlayfairDisplay"),
        headlineMedium: TextStyle(
            //color: Get.theme.cardColor,
            fontWeight: FontWeight.bold,
            fontSize: 21.sp,
            fontFamily: "PlayfairDisplay"),
        bodyLarge: TextStyle(
            color: Colors.grey[700],
            fontWeight: FontWeight.w400,
            fontSize: 17.sp,
            height: 1.5),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.sp,
        ),
      ));
}
