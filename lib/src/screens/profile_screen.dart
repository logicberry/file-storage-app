import 'package:dribbox/src/components/custom_appbar.dart';
import 'package:dribbox/src/components/file_box.dart';
import 'package:dribbox/src/core/app_theme.dart';
import 'package:dribbox/src/core/core.dart';
import 'package:dribbox/src/core/dimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        appBar: const DbAppBar(
          title: 'My Profile',
          implyLeading: true,
          action: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Space.height(context, 30),
              Stack(children: [
                Container(
                  height: SizeConfig.height(209),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: AppColors.white,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: ClipOval(
                              child: SvgPicture.asset(
                                AssetPath.avatar,
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ),
                        ),
                        Space.height(context, 10),
                        AppTheme.gilroyText('Neelesh Chaudhary', context,
                            size: 18,
                            textColor: AppColors.white,
                            fontWeight: FontWeight.w700),
                        Space.height(context, 5),
                        AppTheme.gilroyText(
                          'UI / UX Designer',
                          context,
                          size: 13,
                          textColor: AppColors.white,
                        ),
                        Space.height(context, 10),
                        AppTheme.gilroyText(
                          textAlign: TextAlign.center,
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.',
                          context,
                          size: 13,
                          textColor: AppColors.white.withOpacity(0.6),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 20,
                  child: Container(
                    height: SizeConfig.height(20),
                    width: SizeConfig.width(40),
                    decoration: BoxDecoration(
                        color: AppColors.pink,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: AppTheme.gilroyText('PRO', context,
                          size: 10,
                          textColor: AppColors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ]),
              Space.height(context, 40),
              Row(
                children: [
                  AppTheme.gilroyText('My Folders', context,
                      size: 15,
                      textColor: AppColors.primaryColor,
                      fontWeight: FontWeight.w600),
                  const Spacer(),
                  const Icon(
                    Icons.add,
                    color: AppColors.primaryColor,
                  ),
                  Space.width(context, 30),
                  SvgPicture.asset(AssetPath.settings),
                  Space.width(context, 30),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primaryColor,
                  )
                ],
              ),
              Space.height(context, 30),
              FileBox(
                backgroundColor: AppColors.blue.withOpacity(0.1),
                color: AppColors.blue,
                topColor: AppColors.darkBlue,
              )
            ],
          ),
        ));
  }
}
