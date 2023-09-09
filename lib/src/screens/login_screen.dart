import 'package:dribbox/src/core/app_colors.dart';
import 'package:flutter/material.dart';

import '../core/app_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppTheme.gilroyText('Login Screen', context,
            fontWeight: FontWeight.bold,
            size: 24,
            textColor: AppColors.primaryColor),
      ),
    );
  }
}
