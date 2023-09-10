import 'package:dribbox/src/components/button.dart';
import 'package:dribbox/src/core/core.dart';
import 'package:dribbox/src/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: SizeConfig.height(280),
            child: Stack(
              children: [
                SvgPicture.asset(
                  AssetPath.bg,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    top: 20, left: 40, child: SvgPicture.asset(AssetPath.moon)),
                Positioned(
                    top: 140,
                    left: -10,
                    child: SvgPicture.asset(AssetPath.moon)),
                Positioned(
                    top: 30,
                    right: 140,
                    child: SvgPicture.asset(AssetPath.moon)),
                Positioned(
                  top: 100,
                  right: -20,
                  child: SvgPicture.asset(
                    AssetPath.moon,
                    height: 65,
                    width: 115,
                  ),
                ),
                Positioned(
                    bottom: 10,
                    left: 30,
                    child: SvgPicture.asset(AssetPath.click))
              ],
            ),
          ),
          Space.height(context, 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTheme.gilroyText('Welcome to', context,
                    fontWeight: FontWeight.w300,
                    size: 20,
                    textColor: AppColors.primaryColor),
                Space.height(context, 10),
                AppTheme.gilroyText('Dribbox', context,
                    fontWeight: FontWeight.w700,
                    size: 38,
                    textColor: AppColors.primaryColor),
                Space.height(context, 10),
                SizedBox(
                  width: SizeConfig.width(223),
                  child: AppTheme.gilroyText(
                      'Best cloud storage platform for all business and individuals to manage there data',
                      context,
                      fontWeight: FontWeight.w500,
                      size: 14,
                      lineheight: 1.7,
                      textColor: AppColors.grey),
                ),
                Space.height(context, 10),
                AppTheme.gilroyText('Join For Free.', context,
                    fontWeight: FontWeight.w500,
                    size: 14,
                    textColor: AppColors.grey),
                Space.height(context, 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DbButtton(
                        onTap: () =>
                            Navigator.pushNamed(context, HomeScreen.routeName),
                        color: AppColors.lightBlue,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(AssetPath.thumb),
                              Space.width(context, 10),
                              AppTheme.gilroyText('Smart Id', context,
                                  fontWeight: FontWeight.w600,
                                  size: 16,
                                  textColor: AppColors.blue),
                            ])),
                    DbButtton(
                        onTap: () =>
                            Navigator.pushNamed(context, HomeScreen.routeName),
                        color: AppColors.blue,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppTheme.gilroyText('Sign in', context,
                                  fontWeight: FontWeight.w600,
                                  size: 16,
                                  textColor: AppColors.white),
                              Space.width(context, 10),
                              const Icon(Icons.arrow_forward)
                            ])),
                  ],
                ),
                Space.height(context, 54),
                Center(
                  child: AppTheme.gilroyText('Use Social Login', context,
                      fontWeight: FontWeight.w400,
                      size: 12,
                      textColor: AppColors.grey),
                ),
                Space.height(context, 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(AssetPath.instagram),
                    SvgPicture.asset(AssetPath.twitter),
                    SvgPicture.asset(AssetPath.facebook),
                  ],
                ),
                Space.height(context, 34),
                Center(
                  child: AppTheme.gilroyText('Create an account', context,
                      fontWeight: FontWeight.w400,
                      size: 16,
                      textColor: AppColors.primaryColor),
                ),
                Space.height(context, 10),
              ],
            ),
          )
        ],
      ),
    )));
  }
}
