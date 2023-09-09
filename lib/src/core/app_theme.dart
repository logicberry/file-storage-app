import 'package:dribbox/src/core/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
      colorScheme: const ColorScheme.light(
        background: AppColors.white,
      ),
      scaffoldBackgroundColor: AppColors.white,
      textTheme: const TextTheme(),
      fontFamily: 'Gilroy');

  static Text gilroyText(String text, BuildContext context,
      {FontWeight? fontWeight, double? size, Color? textColor}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Gilroy',
        fontSize: size,
        fontWeight: fontWeight,
        color: textColor,
      ),
    );
  }

  static Text avenirText(String text, BuildContext context,
      {FontWeight? fontWeight, double? size, Color? textColor}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Avenir',
        fontSize: size,
        fontWeight: fontWeight,
        color: textColor,
      ),
    );
  }
}
