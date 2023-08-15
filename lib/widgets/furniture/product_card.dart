import 'package:flutter/material.dart';
import 'package:furniture_app/core/app_colors/app_colors.dart';
import 'package:furniture_app/core/utils.dart';
import 'package:furniture_app/widgets/app_text.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            Utils.getPmgAssetPath('lamp'),
            width: double.infinity,
            height: 200,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(height: 10),
        AppText(
          title: 'Black Simple Lamp',
          color: AppColors.gray2,
        ),
        SizedBox(height: 5),
        AppText(
          title: '\$ 12.00',
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
