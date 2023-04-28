import 'package:chefkart/utils/colors.dart';
import 'package:chefkart/utils/helper_widgets.dart';
import 'package:chefkart/utils/text_styles.dart';
import 'package:flutter/material.dart';

class FoodType extends StatelessWidget {
  const FoodType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        separatorBuilder: (context, index) => addHorizontalSpace(12),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Chip(
          backgroundColor: index == 0 ? AppColors.orangeLight : AppColors.white,
          shadowColor: index == 0 ? AppColors.orangeLight : AppColors.white,
          side: index == 0
              ? const BorderSide(
                  color: AppColors.orange,
                  width: 0.5,
                )
              : const BorderSide(
                  color: AppColors.borderColor,
                  width: 0.5,
                ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          labelPadding: const EdgeInsets.symmetric(horizontal: 20),
          label: Text(
            index == 0 ? "Italian" : "Indian",
            style: AppTextStyles.dmSans.copyWith(
              fontSize: 10,
              color: index == 0 ? AppColors.orange : AppColors.grey3,
              fontWeight: index == 0 ? FontWeight.bold : FontWeight.w500,
            ),
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}
