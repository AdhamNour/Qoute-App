import 'package:flutter/material.dart';
import 'package:qoutes_app/core/utils/app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
      primaryColor: AppColors.primaryColor,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
      textTheme: const TextTheme(
          button: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500)));
}
