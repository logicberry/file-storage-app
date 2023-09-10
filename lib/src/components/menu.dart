import 'package:dribbox/src/components/navitem.dart';
import 'package:dribbox/src/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/app_theme.dart';
import '../core/core.dart';
import '../screens/profile_screen.dart';
import '../screens/storage_details_screen.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selectedItemIndex = 0;

  void selectItem(int index) {
    setState(() {
      selectedItemIndex = index;
    });

    
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.drawerColor,
      width: double.infinity,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: SizeConfig.height(107),
                    width: SizeConfig.width(210),
                    decoration: const BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(54),
                        )),
                    child: Center(
                      child: ListTile(
                        contentPadding: const EdgeInsets.only(
                          left: 40,
                        ),
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundColor: AppColors.white,
                          child: SvgPicture.asset(AssetPath.avatar),
                        ),
                        title: AppTheme.avenirText('Neelesh', context,
                            size: 16,
                            textColor: AppColors.primaryColor,
                            fontWeight: FontWeight.w600),
                        subtitle: AppTheme.avenirText(
                            'Seattle,Washington', context,
                            size: 10,
                            textColor: AppColors.grey,
                            fontWeight: FontWeight.w300),
                      ),
                    )),
                IconButton(
                  icon: const Icon(Icons.close),
                  color: AppColors.primaryColor,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
          NavItem(
            text: 'Home',
            isSelected: selectedItemIndex == 0,
            onTap: () => selectItem(0),
          ),
          NavItem(
            text: 'Profile',
            isSelected: selectedItemIndex == 1,
            onTap: () => selectItem(1),
          ),
          NavItem(
            text: 'Storage',
            isSelected: selectedItemIndex == 2,
            onTap: () => selectItem(2),
          ),
          NavItem(
            text: 'Shared',
            isSelected: selectedItemIndex == 3,
            onTap: () => selectItem(3),
          ),
          NavItem(
            text: 'Stats',
            isSelected: selectedItemIndex == 4,
            onTap: () => selectItem(4),
          ),
          NavItem(
            text: 'Settings',
            isSelected: selectedItemIndex == 5,
            onTap: () => selectItem(5),
          ),
          NavItem(
            text: 'Help',
            isSelected: selectedItemIndex == 6,
            onTap: () => selectItem(6),
          ),
        ],
      ),
    );
  }
}
