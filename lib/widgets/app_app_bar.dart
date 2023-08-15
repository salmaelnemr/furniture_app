import 'package:furniture_app/core/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'app_text.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget{
   const AppAppBar({
     super.key,
     this.leading,
     this.trailing,
     this.title,
     this.upperTitle,
   });

  final String? title;
  final String? upperTitle;
  final Widget? leading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColors.gray,
      ),
      leading: leading,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (upperTitle != null)
            Center(
              child: AppText(
                title: upperTitle ?? "",
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: AppColors.gray2,
              ),
            ),
          if (upperTitle != null && title != null)
            SizedBox(height: 4),
          if (title != null)
             Center(
               child: AppText(
                  title: title ?? "",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppColors.black2,
               ),
             ),

        ],
      ),
      actions: [
        if (trailing != null)
          trailing!,
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
