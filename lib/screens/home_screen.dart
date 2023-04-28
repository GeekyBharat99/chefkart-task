import 'package:chefkart/providers/dishes_provider.dart';
import 'package:chefkart/utils/app_strings.dart';
import 'package:chefkart/utils/colors.dart';
import 'package:chefkart/utils/helper_widgets.dart';
import 'package:chefkart/utils/text_styles.dart';
import 'package:chefkart/widgets/date_and_time_picker.dart';
import 'package:chefkart/widgets/food_type.dart';
import 'package:chefkart/widgets/popular_dishes.dart';
import 'package:chefkart/widgets/recommended_items.dart';
import 'package:chefkart/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static const String route = 'home_screen';
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    ref.read(dishesProvider.notifier).callInitialApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dishes = ref.watch(dishesProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.selectDishes,
          style: AppTextStyles.dmSans.copyWith(
            fontSize: 16,
            color: AppColors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        children: [
          const DateAndTimePicker(),
          addVerticalSpace(40),
          const FoodType(),
          addVerticalSpace(20),
          const PopularDishes(),
          addVerticalSpace(20),
          const Divider(
            color: AppColors.dividerColor,
            endIndent: 0,
            height: 0,
            indent: 0,
            thickness: 3,
          ),
          addVerticalSpace(22),
          const TitleWidget(),
          RecommendedItems(dishes: dishes.dishes),
          RecommendedItems(dishes: dishes.popularDishes),
        ],
      ),
    );
  }
}
