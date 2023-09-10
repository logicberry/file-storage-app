import 'package:dribbox/src/components/chart.dart';
import 'package:dribbox/src/components/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../components/folder_details.dart';
import '../core/app_theme.dart';
import '../core/core.dart';
import '../core/dimension.dart';

class StorageDetailsScreen extends StatelessWidget {
  static const String routeName = '/storagedetails-screen';

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
            child: SingleChildScrollView(
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
                  Space.height(context, 15),
                  const FolderDetails(
                    value: 0.4,
                    color: AppColors.primaryColor,
                    title: 'Design Files',
                    subtitle: '38.66 GB',
                  ),
                  const FolderDetails(
                    value: 0.6,
                    color: AppColors.yellow,
                    title: 'Images',
                    subtitle: '24.80 GB',
                  ),
                  const FolderDetails(
                    value: 0.65,
                    color: AppColors.green,
                    title: 'Videos',
                    subtitle: '12.60 GB',
                  ),
                  const FolderDetails(
                    value: 0.3,
                    color: AppColors.blue,
                    title: 'Design Files',
                    subtitle: '38.66 GB',
                  ),
                  const FolderDetails(
                    value: 0.8,
                    color: AppColors.orange,
                    title: 'Others',
                    subtitle: '12.01 GB',
                  ),
                  Space.height(context, 20),
                  AppTheme.gilroyText('Export Details', context,
                      size: 16,
                      fontWeight: FontWeight.w600,
                      textColor: AppColors.primaryColor),
                  Space.height(context, 10),
                ],
              ),
            )));
  }
}
