import 'package:dribbox/src/components/menu.dart';
import 'package:dribbox/src/components/textfield.dart';
import 'package:dribbox/src/core/core.dart';
import 'package:dribbox/src/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/file_box.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: _scaffoldKey,
      drawer: const SideMenu(),
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
                    GestureDetector(
                        onTap: () {
                          _scaffoldKey.currentState?.openDrawer();
                        },
                        child: SvgPicture.asset(AssetPath.menu))
                  ],
                ),
                Space.height(context, 30),
                const DBTextField(
                  hintText: 'Search',
                  labeltext: '',
                  prefix: Icon(
                    Icons.search,
                    color: AppColors.primaryColor,
                  ),
                ),
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
                Expanded(
                  child: SingleChildScrollView(
                    child: GridView.count(
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
                          FileBox(
                            title: 'Design',
                            subtitle: 'December 20,2022',
                            backgroundColor: AppColors.blue.withOpacity(0.1),
                            color: AppColors.blue,
                            topColor: AppColors.darkBlue,
                          ),
                          FileBox(
                            title: 'Portfolio',
                            subtitle: 'January 20,2022',
                            backgroundColor: AppColors.yellow.withOpacity(0.1),
                            color: AppColors.yellow,
                            topColor: AppColors.darkYellow,
                          ),
                          FileBox(
                            title: 'References',
                            subtitle: 'August 20,2022',
                            backgroundColor: AppColors.red.withOpacity(0.1),
                            color: AppColors.red,
                            topColor: AppColors.darkRed,
                          ),
                          FileBox(
                            title: 'Clients',
                            subtitle: 'November 20,2022',
                            backgroundColor: AppColors.lime.withOpacity(0.1),
                            color: AppColors.lime,
                            topColor: AppColors.darkLime,
                          ),
                          FileBox(
                            title: 'Dev Ops',
                            subtitle: 'December 20,2022',
                            backgroundColor: AppColors.blue.withOpacity(0.1),
                            color: AppColors.blue,
                            topColor: AppColors.darkBlue,
                          ),
                          FileBox(
                            title: 'Data Science',
                            subtitle: 'January 20,2022',
                            backgroundColor: AppColors.yellow.withOpacity(0.1),
                            color: AppColors.yellow,
                            topColor: AppColors.darkYellow,
                          ),
                        ]),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 60,
              right: 16.0,
              child: FloatingActionButton(
                onPressed: () =>
                    Navigator.pushNamed(context, ProfileScreen.routeName),
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
