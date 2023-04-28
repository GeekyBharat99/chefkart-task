import 'package:chefkart/models/dish.dart';
import 'package:chefkart/screens/details_screen.dart';
import 'package:chefkart/utils/app_strings.dart';
import 'package:chefkart/utils/colors.dart';
import 'package:chefkart/utils/helper_widgets.dart';
import 'package:chefkart/utils/images.dart';
import 'package:chefkart/utils/text_styles.dart';
import 'package:chefkart/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class DishItem extends StatelessWidget {
  const DishItem({
    super.key,
    required this.dish,
  });

  final Dish dish;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        DetailsScreen.route,
        arguments: dish.id,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        dish.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.dmSans.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                        ),
                      ),
                      addHorizontalSpace(6),
                      Image.asset(
                        AppImages.vegTag,
                        width: 8,
                        height: 8,
                      ),
                      addHorizontalSpace(10),
                      Container(
                        height: 10,
                        width: 22,
                        decoration: BoxDecoration(
                          color: AppColors.green,
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              dish.rating.toStringAsFixed(1),
                              style: AppTextStyles.dmSans.copyWith(
                                fontSize: 6,
                                color: AppColors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Icon(
                              Icons.star_rounded,
                              color: AppColors.white,
                              size: 6,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  addVerticalSpace(8),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              AppImages.fridge,
                              height: 18.45,
                              width: 23,
                            ),
                            addVerticalSpace(2),
                            Text(
                              "Refrigerator",
                              style: AppTextStyles.dmSans.copyWith(
                                fontSize: 4,
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                              ),
                            ),
                          ],
                        ),
                        addHorizontalSpace(8),
                        Column(
                          children: [
                            Image.asset(
                              AppImages.fridge,
                              height: 18.45,
                              width: 23,
                            ),
                            addVerticalSpace(2),
                            Text(
                              "Refrigerator",
                              style: AppTextStyles.dmSans.copyWith(
                                fontSize: 4,
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                              ),
                            ),
                          ],
                        ),
                        addHorizontalSpace(12),
                        const VerticalDivider(),
                        addHorizontalSpace(12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppStrings.ingredients,
                              style: AppTextStyles.dmSans.copyWith(
                                fontSize: 6,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black,
                              ),
                            ),
                            addVerticalSpace(2),
                            Text(
                              "View list  >",
                              style: AppTextStyles.dmSans.copyWith(
                                fontSize: 5,
                                fontWeight: FontWeight.w600,
                                color: AppColors.orange,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  addVerticalSpace(8),
                  Text(
                    dish.description,
                    style: AppTextStyles.dmSans.copyWith(
                      fontSize: 8,
                      fontWeight: FontWeight.w600,
                      color: AppColors.darkGrey,
                    ),
                  ),
                  addVerticalSpace(10),
                ],
              ),
            ),
            addHorizontalSpace(45),
            ImageWidget(dish: dish),
          ],
        ),
      ),
    );
  }
}
