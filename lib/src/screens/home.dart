import 'package:dribbox/src/components/textfield.dart';
import 'package:dribbox/src/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/file_box.dart';
import '../core/app_theme.dart';
import '../core/dimension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
          child: Stack(children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppTheme.gilroyText('Your Dribbbox', context,
                        size: 24,
                        fontWeight: FontWeight.w600,
                        textColor: AppColors.primaryColor),
                    SvgPicture.asset(AssetPath.menu)
                  ],
                ),
                Space.height(context, 30),
                const DBTextField(hintText: 'Search', labeltext: ''),
                Space.height(context, 25),
                Row(
                  children: [
                    AppTheme.gilroyText('Recent', context,
                        size: 15,
                        textColor: AppColors.primaryColor,
                        fontWeight: FontWeight.w600),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.primaryColor,
                    ),
                    const Spacer(),
                    SvgPicture.asset(AssetPath.union),
                    Space.width(context, 20),
                    SvgPicture.asset(AssetPath.box),
                  ],
                ),
                Space.height(context, 30),
               
              ],
            ),
            Positioned(
              bottom: 60,
              right: 16.0,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: AppColors.primaryColor,
                child: const Icon(
                  Icons.add,
                  color: AppColors.white,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
