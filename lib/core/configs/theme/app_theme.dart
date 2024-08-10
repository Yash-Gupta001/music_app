import 'package:flutter/material.dart';
import 'package:music_app/core/configs/theme/app_color.dart';

class AppTheme{

  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightBackground,
    elevatedButtonTheme: ElevatedButtonThemeData()
  );
}