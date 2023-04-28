import 'package:chefkart/utils/app_strings.dart';
import 'package:chefkart/utils/colors.dart';
import 'package:chefkart/utils/text_styles.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 23),
          child: Text(
            AppStrings.recommended,
            style: AppTextStyles.dmSans.copyWith(
              fontSize: 16,
              color: AppColors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 23),
          child: Container(
            height: 22,
            width: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: AppColors.black,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 0.5,
                  color: Color(0xff000029),
                  offset: Offset(0, 2),
                )
              ],
            ),
            child: Center(
              child: Text(
                AppStrings.menu,
                style: AppTextStyles.dmSans.copyWith(
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
