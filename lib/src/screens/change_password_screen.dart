import 'package:dribbox/src/components/textfield.dart';
import 'package:flutter/material.dart';

import '../components/custom_appbar.dart';
import '../core/app_theme.dart';
import '../core/core.dart';
import '../core/dimension.dart';

class ChangePasswordScreen extends StatelessWidget {
     static const String routeName = '/changepassword-screen';

  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            AppTheme.gilroyText('Change Password', context,
                size: 30,
                fontWeight: FontWeight.w700,
                textColor: AppColors.primaryColor),
            Space.height(context, 40),
            AppTheme.gilroyText('Current Password', context,
                size: 16,
                fontWeight: FontWeight.w500,
                textColor: AppColors.primaryColor),
            const DBTextField(
              hintText: '',
              labeltext: 'Old Password',
            ),
            Space.height(context, 30),
            AppTheme.gilroyText('New Password', context,
                size: 16,
                fontWeight: FontWeight.w500,
                textColor: AppColors.primaryColor),
            const DBTextField(hintText: '', labeltext: 'Old Password'),
            Space.height(context, 30),
            AppTheme.gilroyText('Confirm new Password', context,
                size: 16,
                fontWeight: FontWeight.w500,
                textColor: AppColors.primaryColor),
            const DBTextField(hintText: '', labeltext: 'Old Password'),
          ],
        ),
      )),
    );
  }
}
