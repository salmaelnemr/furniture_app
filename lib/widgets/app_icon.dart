import 'package:flutter/material.dart';

import '../core/app_colors/app_colors.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key,
    required this.icon,
    //this.maxLines,
    this.color = AppColors.darkGray,
    this.size = 20,
    //this.fontWeight = FontWeight.normal,
  });

  final Icon icon;
  //final int? maxLines;
  final Color? color;
  final double size;
  //final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon as IconData?,
      size: size,
      color: AppColors.white,
    );
  }
}
