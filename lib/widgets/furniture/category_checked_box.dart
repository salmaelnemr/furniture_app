import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/app_colors/app_colors.dart';
import 'package:furniture_app/core/utils.dart';
import 'package:furniture_app/widgets/app_text.dart';

class CategoryCheckedBox extends StatelessWidget {
  const CategoryCheckedBox({
    super.key,
    required this.isNotificationsEnabled,
    required this.onTap,
    required this.title1,
    required this.title2,
    required this.title3,
  });

  final bool isNotificationsEnabled;
  final void Function() onTap;
  final String title1;
  final String title2;
  final String title3;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: onTap,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                  activeColor: AppColors.black,
                  value: isNotificationsEnabled ? true : false,
                  onChanged: (value){},
                ),

              AppText(
                title:title1,
                fontWeight: FontWeight.w500,
                color: isNotificationsEnabled ? AppColors.black2 : AppColors.gray2,
              ),
            ],
          ),
        ),
        SizedBox(height: 8),
        Container(
          height: 50.h,
          width: 335.w,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                AppText(
                  title: title2,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: AppColors.black,
                ),
                Spacer(),
                Image.asset(Utils.getPmgAssetPath('edit')),
              ],
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.white2,
          ),
        ),
        SizedBox(height: 4),
        Container(
          height: 77.h,
          width: 335.w,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                AppText(
                  title: title3,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.gray2,
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.white2,
          ),
        ),
        SizedBox(height: 31),
      ],
    );;
  }
}
