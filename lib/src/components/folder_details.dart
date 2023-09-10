import 'package:flutter/material.dart';

import '../core/app_theme.dart';
import '../core/core.dart';

class FolderDetails extends StatelessWidget {
  final Color color;
  final String title, subtitle;
  const FolderDetails({
    super.key,
    required this.color,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      minLeadingWidth: 0,
      horizontalTitleGap: 10,
      minVerticalPadding: 0,
      leading: Padding(
        padding: const EdgeInsets.only(top: 7.0),
        child: CircleAvatar(
          radius: 5,
          backgroundColor: color,
        ),
      ),
      title: AppTheme.gilroyText(title, context,
          size: 15,
          textColor: AppColors.primaryColor,
          fontWeight: FontWeight.w600),
      subtitle: AppTheme.gilroyText(
        subtitle,
        context,
        size: 12,
        textColor: AppColors.primaryColor,
      ),
      trailing: SizedBox(
        height: SizeConfig.height(4),
        width: SizeConfig.width(120),
        child: LinearProgressIndicator(
          backgroundColor: color,
          value: 0.4,
          valueColor: const AlwaysStoppedAnimation<Color>(AppColors.lightBlue),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
}
