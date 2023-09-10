import 'package:dribbox/src/components/chart.dart';
import 'package:dribbox/src/components/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../core/app_theme.dart';
import '../core/core.dart';
import '../core/dimension.dart';

class StorageDetailsScreen extends StatelessWidget {
  const StorageDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        appBar: const DbAppBar(
          title: 'Storage Details',
          implyLeading: true,
          action: true,
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                const FileChart(),
                AppTheme.gilroyText('Available', context,
                    size: 20, textColor: AppColors.primaryColor),
                Space.height(context, 8),
                AppTheme.gilroyText('43.36 GB', context,
                    size: 24,
                    fontWeight: FontWeight.w700,
                    textColor: AppColors.primaryColor),
                Space.height(context, 8),
                AppTheme.gilroyText('Total 128 GB', context,
                    size: 20, textColor: AppColors.primaryColor),
              ],
            )));
  }
}
