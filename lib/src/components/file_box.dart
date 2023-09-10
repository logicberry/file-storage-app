import 'package:dribbox/src/core/core.dart';
import 'package:dribbox/src/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/app_theme.dart';
import '../core/dimension.dart';

class FileBox extends StatelessWidget {
  final Color backgroundColor, color, topColor;
  final String title, subtitle;
  const FileBox(
      {super.key,
      required this.color,
      required this.backgroundColor,
      required this.topColor,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, StorageDetailsScreen.routeName),
      child: Container(
        height: SizeConfig.height(107),
        width: SizeConfig.width(148),
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(children: [
                    SvgPicture.asset(
                      AssetPath.folder,
                      color: color,
                    ),
                    Positioned(
                        child: SvgPicture.asset(
                      AssetPath.foldertop,
                      color: topColor,
                    ))
                  ]),
                  Icon(
                    Icons.more_vert,
                    color: topColor,
                  )
                ],
              ),
              Space.height(context, 10),
              AppTheme.gilroyText(title, context,
                  size: 15, textColor: topColor, fontWeight: FontWeight.w600),
              Space.height(context, 2),
              AppTheme.gilroyText(subtitle, context,
                  size: 10, textColor: topColor),
            ],
          ),
        ),
      ),
    );
  }
}
