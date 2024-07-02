import 'package:flutter/material.dart';
import 'package:pos_management/ui/utiliy/app_colors.dart';

class AppThemeData {
  static ThemeData lightThemeData = ThemeData(
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
    textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: 28, fontWeight: FontWeight.w500, color: Colors.black87),
        titleSmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        backgroundColor: AppColors.primaryColor,
      ),
    ),
  );
}
