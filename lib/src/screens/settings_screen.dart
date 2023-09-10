import 'package:dribbox/src/components/custom_appbar.dart';
import 'package:dribbox/src/screens/change_password_screen.dart';
import 'package:flutter/material.dart';

import '../core/core.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = '/settings-screen';

  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: const DbAppBar(
        implyLeading: true,
        title: '',
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTheme.gilroyText('Settings', context,
                size: 30,
                fontWeight: FontWeight.w700,
                textColor: AppColors.primaryColor),
            Space.height(context, 30),
            AppTheme.gilroyText('Add Account', context,
                size: 16,
                fontWeight: FontWeight.w500,
                textColor: AppColors.primaryColor),
            Space.height(context, 30),
            GestureDetector(
              onTap: () =>
                  Navigator.pushNamed(context, ChangePasswordScreen.routeName),
              child: AppTheme.gilroyText('Change Password', context,
                  size: 16,
                  fontWeight: FontWeight.w500,
                  textColor: AppColors.primaryColor),
            ),
            Space.height(context, 30),
            AppTheme.gilroyText('Change Language', context,
                size: 16,
                fontWeight: FontWeight.w500,
                textColor: AppColors.primaryColor),
            Space.height(context, 30),
            AppTheme.gilroyText('Upgrade Plan', context,
                size: 16,
                fontWeight: FontWeight.w500,
                textColor: AppColors.primaryColor),
            Space.height(context, 30),
            AppTheme.gilroyText('Multiple Account', context,
                size: 16,
                fontWeight: FontWeight.w500,
                textColor: AppColors.primaryColor),
            Space.height(context, 40),
            SwitchListTile(
              contentPadding: const EdgeInsets.all(0),
              dense: true,
              value: true,
              onChanged: (value) {},
              title: AppTheme.gilroyText('Enable sync', context,
                  size: 16,
                  fontWeight: FontWeight.w700,
                  textColor: AppColors.primaryColor),
            ),
            SwitchListTile(
              contentPadding: const EdgeInsets.all(0),
              dense: true,
              value: true,
              onChanged: (value) {},
              title: AppTheme.gilroyText('Enable 2 Step Verification', context,
                  size: 16,
                  fontWeight: FontWeight.w700,
                  textColor: AppColors.primaryColor),
            ),
          ],
        ),
      )),
    );
  }
}
