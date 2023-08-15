import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/app_colors/app_colors.dart';
import 'package:furniture_app/widgets/app_text.dart';
import '../../core/utils.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    super.key,
    required this.image,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  final String image;
  final String title;
  final bool isSelected;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              height: 44,
              width: 44,
              child: Image.asset(
                Utils.getPmgAssetPath(image),
                color: isSelected ? AppColors.white : AppColors.darkGray,
              ),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.black2 : AppColors.gray2,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          SizedBox(height: 5),
          AppText(
            title: title,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: isSelected ? AppColors.black2 : AppColors.gray2,
          ),
        ],
      ),
    );
  }
}
