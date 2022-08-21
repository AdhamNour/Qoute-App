import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qoutes_app/core/utils/app_colors.dart';
import 'package:qoutes_app/core/utils/app_strings.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.primaryColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    fontFamily: AppStrings.fontFamily,
    textTheme: const TextTheme(
        button: TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
        headline2: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
          color: AppColors.primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 20),
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark),
    ),
  );
}
