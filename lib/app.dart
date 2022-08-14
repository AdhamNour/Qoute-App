import 'package:flutter/material.dart';
import 'package:qoutes_app/config/themes/app_theme.dart';
import 'package:qoutes_app/core/utils/app_colors.dart';
import 'package:qoutes_app/core/utils/app_strings.dart';
import 'package:qoutes_app/features/random_qoute/presentation/screens/qoute_screens.dart';

class QouteApp extends StatelessWidget {
  const QouteApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      theme: appTheme(),
      home: const QouteScreen(),
    );
  }
}
