import 'package:dribbox/src/core/core.dart';
import 'package:flutter/material.dart';

import '../core/app_theme.dart';

class DbAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool implyLeading, action;
  final void Function()? ontap;
  const DbAppBar({
    Key? key,
    this.title,
    this.action = false,
    this.implyLeading = false,
    this.ontap,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 13),
      child: AppBar(
          automaticallyImplyLeading: implyLeading,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leadingWidth: 30,
          title: AppTheme.gilroyText(title!, context,
              size: 16,
              textColor: AppColors.primaryColor,
              fontWeight: FontWeight.w600),
          centerTitle: true,
          leading: implyLeading
              ? IconButton(
                  onPressed: ontap ?? () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios,
                      color: AppColors.primaryColor),
                )
              : null,
          actions: action
              ? [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                        color: AppColors.primaryColor,
                      ))
                ]
              : null),
    );
  }
}
