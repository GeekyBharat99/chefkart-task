import 'package:chefkart/models/dish.dart';
import 'package:chefkart/models/dishes.dart';
import 'package:chefkart/utils/colors.dart';
import 'package:chefkart/widgets/dish_item.dart';
import 'package:flutter/material.dart';

class RecommendedItems extends StatelessWidget {
  const RecommendedItems({
    super.key,
    required this.dishes,
  });

  final List<Dish> dishes;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 12),
      physics: const ClampingScrollPhysics(),
      itemBuilder: (context, index) => DishItem(dish: dishes[index]),
      separatorBuilder: (context, index) => const Divider(
        thickness: 1.5,
        color: AppColors.dividerColor,
      ),
      itemCount: dishes.length,
    );
  }
}
