import 'package:flutter/widgets.dart';
import 'responsive.dart';

class Space {
  static SizedBox height(BuildContext context, double height) {
    return SizedBox(height: SizeConfig.height(height));
  }

  static SizedBox width(BuildContext context, double width) {
    return SizedBox(width: SizeConfig.width(width));
  }
}
