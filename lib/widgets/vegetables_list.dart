import 'package:chefkart/models/vegetable.dart';
import 'package:chefkart/utils/colors.dart';
import 'package:chefkart/utils/helper_widgets.dart';
import 'package:chefkart/utils/text_styles.dart';
import 'package:flutter/material.dart';

class VegetablesList extends StatelessWidget {
  const VegetablesList({
    super.key,
    required this.vegetables,
  });

  final List<Vegetable> vegetables;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (context, index) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            vegetables[index].name,
            style: AppTextStyles.dmSans.copyWith(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
            ),
          ),
          Text(
            vegetables[index].quantity,
            style: AppTextStyles.dmSans.copyWith(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
            ),
          ),
        ],
      ),
      separatorBuilder: (context, index) => addVerticalSpace(8),
      itemCount: vegetables.length,
    );
  }
}
