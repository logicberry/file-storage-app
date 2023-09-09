import 'package:flutter/material.dart';

import '../core/core.dart';

class DbButtton extends StatelessWidget {
  final Widget child;
  final Color color;
  const DbButtton({super.key, required this.child, required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: color,
          fixedSize: Size(SizeConfig.width(150), SizeConfig.height(50)),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: child,
    );
  }
}
