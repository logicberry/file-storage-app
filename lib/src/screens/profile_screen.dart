import 'dart:async';

import 'package:dribbox/src/components/custom_appbar.dart';
import 'package:dribbox/src/components/file_box.dart';
import 'package:dribbox/src/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = '/profile-screen';

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Color _currentColor = AppColors.primaryColor;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        _currentColor = (_currentColor == AppColors.primaryColor)
            ? Colors.white
            : AppColors.primaryColor;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Space.height(context, 20),
                Stack(children: [
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: (_currentColor == Colors.white) ? 0.5 : 0.0,
                    child: Container(
                      height: SizeConfig.height(209),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: _currentColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
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
                                textColor: (_currentColor == Colors.white)
                                    ? AppColors.primaryColor
                                    : AppColors.white,
                                fontWeight: FontWeight.w700),
                            Space.height(context, 5),
                            AppTheme.gilroyText('UI / UX Designer', context,
                                size: 13,
                                textColor: (_currentColor == Colors.white)
                                    ? AppColors.primaryColor
                                    : AppColors.white),
                            Space.height(context, 10),
                            AppTheme.gilroyText(
                              textAlign: TextAlign.center,
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.',
                              context,
                              size: 13,
                              textColor: (_currentColor == Colors.white)
                                  ? AppColors.primaryColor
                                  : AppColors.white.withOpacity(0.6),
                            ),
                          ],
                        ),
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
                GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 19,
                    crossAxisSpacing: 19,
                    childAspectRatio: 148 / 107,
                    shrinkWrap: true,
                    children: [
                      FileBox(
                        title: 'Mobile Apps',
                        subtitle: 'December 20,2022',
                        backgroundColor: AppColors.blue.withOpacity(0.1),
                        color: AppColors.blue,
                        topColor: AppColors.darkBlue,
                      ),
                      FileBox(
                        title: 'SVG Icons',
                        subtitle: 'January 20,2022',
                        backgroundColor: AppColors.yellow.withOpacity(0.1),
                        color: AppColors.yellow,
                        topColor: AppColors.darkYellow,
                      ),
                      FileBox(
                        title: 'Prototypes',
                        subtitle: 'August 20,2022',
                        backgroundColor: AppColors.red.withOpacity(0.1),
                        color: AppColors.red,
                        topColor: AppColors.darkRed,
                      ),
                      FileBox(
                        title: 'Avatars',
                        subtitle: 'November 20,2022',
                        backgroundColor: AppColors.lime.withOpacity(0.1),
                        color: AppColors.lime,
                        topColor: AppColors.darkLime,
                      ),
                    ]),
                Space.height(context, 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppTheme.gilroyText('Recent Uploads', context,
                        size: 15,
                        textColor: AppColors.primaryColor,
                        fontWeight: FontWeight.w600),
                    SvgPicture.asset(AssetPath.sort),
                  ],
                ),
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  leading: CircleAvatar(
                    backgroundColor: AppColors.lightBlue,
                    child: SvgPicture.asset(AssetPath.word),
                  ),
                  title: AppTheme.gilroyText(' Projects.docx', context,
                      size: 15,
                      textColor: AppColors.primaryColor,
                      fontWeight: FontWeight.w600),
                  subtitle: AppTheme.gilroyText(
                    ' November 20 2022',
                    context,
                    size: 11,
                    textColor: AppColors.primaryColor,
                  ),
                  trailing: AppTheme.gilroyText('300kb', context,
                      size: 15,
                      textColor: AppColors.primaryColor.withOpacity(0.6),
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ));
  }
}
