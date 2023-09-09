import 'package:dribbox/src/core/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 300,
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
                  top: 140, left: -10, child: SvgPicture.asset(AssetPath.moon)),
              Positioned(
                  top: 40, right: 140, child: SvgPicture.asset(AssetPath.moon)),
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
                  top: 100, left: 30, child: SvgPicture.asset(AssetPath.click))
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              Text('Welcome to '),
            ],
          ),
        )
      ],
    )));
  }
}
