import 'package:downwork/screens/widgets/AppColors.dart';
import 'package:flutter/material.dart';

ThemeData getapplicationTheme() {
  return ThemeData(
      scaffoldBackgroundColor: const Color(0xffE8F3D6),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(
              fontSize: 18, color: textcolor, fontWeight: FontWeight.w500),
          backgroundColor: primarycolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ));
}
