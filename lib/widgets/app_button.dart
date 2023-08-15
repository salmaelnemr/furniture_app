import 'package:furniture_app/core/app_colors/app_colors.dart';
import 'package:furniture_app/core/dimensions/dimensions.dart';
import 'package:furniture_app/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.onPressed,
    required this.title,
    this.color = AppColors.black2,
  });

  final String title;
  final Color color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
        child: Container(
          height: 48.height,
          width: double.infinity,
          alignment: Alignment.center,
          child: AppText(
            title: title,
            color: AppColors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color,
          ),
       ),
    );
  }
}
