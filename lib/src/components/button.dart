import 'package:flutter/material.dart';

import '../core/core.dart';

class DbButtton extends StatelessWidget {
  final Widget child;
  final Color color;
  final VoidCallback onTap;
  const DbButtton({super.key, required this.child, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
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
