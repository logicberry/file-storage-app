import 'package:dribbox/src/components/custom_appbar.dart';
import 'package:dribbox/src/core/core.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return const Scaffold(
      appBar: DbAppBar(
        title: 'My Profile',
        implyLeading: true,
        action: true,
      ),
    );
  }
}
