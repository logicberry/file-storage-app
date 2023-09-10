import 'package:dribbox/src/core/app_theme.dart';
import 'package:flutter/material.dart';

import '../core/core.dart';

class NavItem extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const NavItem({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0,
      horizontalTitleGap: 0,
      contentPadding: EdgeInsets.zero,
      minLeadingWidth: 26,
      dense: true,
      onTap: onTap,
      title: AppTheme.gilroyText(
        text,
        context,
        size: 16,
        fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
      ),
      leading: Container(
        height: 33,
        width: 4,
        color: isSelected ? AppColors.blue : Colors.transparent,
      ),
    );
  }
}
