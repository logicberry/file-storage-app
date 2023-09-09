import 'package:dribbox/src/core/app_colors.dart';
import 'package:dribbox/src/core/responsive.dart';
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
      {FontWeight? fontWeight, double? size, Color? textColor, double? lineheight, TextAlign? textAlign}) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontFamily: 'Gilroy',
          fontSize: SizeConfig.text(size!),
          fontWeight: fontWeight,
          color: textColor,
          height: lineheight),
    );
  }

  static Text avenirText(String text, BuildContext context,
      {FontWeight? fontWeight, double? size, Color? textColor}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Avenir',
        fontSize: SizeConfig.text(size!),
        fontWeight: fontWeight,
        color: textColor,
      ),
    );
  }
}
