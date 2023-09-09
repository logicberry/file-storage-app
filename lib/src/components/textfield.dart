import 'package:flutter/material.dart';

import '../core/core.dart';

class DBTextField extends StatelessWidget {
  final String? hintText, labeltext;
  final TextEditingController? controller;
  final Widget? icon, prefix;
  final TextInputType? inputType;
  const DBTextField(
      {super.key,
      this.hintText,
      this.controller,
      this.inputType,
      required this.labeltext,
      this.icon,
      this.prefix});
  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder customOutlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: AppColors.border),
      borderRadius: BorderRadius.circular(10),
    );
    return SizedBox(
      height: SizeConfig.height(55),
      child: TextFormField(
        style: const TextStyle(
            fontSize: 16,
            letterSpacing: 1,
            decoration: TextDecoration.none,
            decorationStyle: TextDecorationStyle.dotted,
            decorationColor: AppColors.white),
        controller: controller,
        keyboardType: inputType ?? TextInputType.text,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            hintText: hintText ?? 'Search Folder',
            contentPadding: const EdgeInsets.all(5),
            hintStyle: const TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor),
            prefixIcon: prefix,
            border: customOutlineInputBorder,
            enabledBorder: customOutlineInputBorder,
            focusedBorder: customOutlineInputBorder),
        cursorColor: AppColors.primaryColor,
      ),
    );
  }
}
