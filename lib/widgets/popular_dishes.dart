import 'package:chefkart/utils/app_strings.dart';
import 'package:chefkart/utils/colors.dart';
import 'package:chefkart/utils/helper_widgets.dart';
import 'package:chefkart/utils/images.dart';
import 'package:chefkart/utils/text_styles.dart';
import 'package:flutter/material.dart';

class PopularDishes extends StatelessWidget {
  const PopularDishes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 23),
          child: Text(
            AppStrings.popularDishes,
            style: AppTextStyles.dmSans.copyWith(
              fontSize: 14,
              color: AppColors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        addVerticalSpace(12),
        SizedBox(
          height: 63,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            separatorBuilder: (context, index) => addHorizontalSpace(8),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              height: 63,
              width: 63,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                border: index == 0
                    ? null
                    : Border.all(
                        color: AppColors.orange,
                        width: 1,
                      ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        AppImages.biryani,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: AppColors.black.withOpacity(0.45),
                        child: Center(
                          child: Text(
                            "Biryani",
                            style: AppTextStyles.dmSans.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
