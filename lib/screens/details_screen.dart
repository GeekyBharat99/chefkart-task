import 'package:chefkart/providers/dish_details_provider.dart';
import 'package:chefkart/utils/app_strings.dart';
import 'package:chefkart/utils/colors.dart';
import 'package:chefkart/utils/helper_widgets.dart';
import 'package:chefkart/utils/images.dart';
import 'package:chefkart/utils/text_styles.dart';
import 'package:chefkart/widgets/vegetables_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailsScreen extends ConsumerStatefulWidget {
  static const String route = 'details_screen';
  const DetailsScreen({super.key, required this.id});

  final int id;

  @override
  ConsumerState<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends ConsumerState<DetailsScreen> {
  @override
  void initState() {
    ref
        .read(disheDetailsProvider.notifier)
        .callDishDetailsInitialApi(id: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final details = ref.watch(disheDetailsProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            children: [
              addVerticalSpace(12),
              Row(
                children: [
                  Text(
                    details.name,
                    style: AppTextStyles.dmSans.copyWith(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
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
                          "4.2",
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
              addVerticalSpace(4),
              Padding(
                padding: const EdgeInsets.only(right: 130),
                child: Text(
                  "Mughlai Masala is a style of cookery developed in the Indian Subcontinent by the imperial kitchens of the Mughal Empire.",
                  style: AppTextStyles.dmSans.copyWith(
                    fontSize: 8,
                    fontWeight: FontWeight.w600,
                    color: AppColors.grey2,
                  ),
                ),
              ),
              addVerticalSpace(26),
              Row(
                children: [
                  Image.asset(
                    AppImages.time,
                    height: 13,
                    width: 13,
                  ),
                  addHorizontalSpace(8),
                  Text(
                    details.timeToPrepare,
                    style: AppTextStyles.dmSans.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
              addVerticalSpace(30),
              const Divider(
                color: AppColors.dividerColor,
                endIndent: 0,
                height: 0,
                indent: 0,
                thickness: 3,
              ),
              addVerticalSpace(22),
              Text(
                AppStrings.ingredients,
                style: AppTextStyles.dmSans.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              addVerticalSpace(4),
              Text(
                "For 2 people",
                style: AppTextStyles.dmSans.copyWith(
                  fontSize: 5,
                  fontWeight: FontWeight.w600,
                  color: AppColors.grey2,
                ),
              ),
              addVerticalSpace(16),
              const Divider(
                color: AppColors.grey,
                endIndent: 0,
                height: 0,
                indent: 0,
                thickness: 1,
              ),
              addVerticalSpace(16),
              Text(
                AppStrings.vegetables,
                style: AppTextStyles.dmSans.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              addVerticalSpace(10),
              VegetablesList(vegetables: details.ingredients.vegetables),
              addVerticalSpace(24),
              Text(
                AppStrings.spices,
                style: AppTextStyles.dmSans.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              addVerticalSpace(10),
              VegetablesList(vegetables: details.ingredients.spices),
              addVerticalSpace(24),
              Text(
                AppStrings.appliances,
                style: AppTextStyles.dmSans.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              addVerticalSpace(16),
              SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xffF5F5F5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Image.asset(
                            AppImages.refrigerator,
                            height: 55,
                            width: 30,
                          ),
                          const Spacer(),
                          Text(
                            details.ingredients.appliances[index].name,
                            style: AppTextStyles.dmSans.copyWith(
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                              color: AppColors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => addHorizontalSpace(20),
                  itemCount: details.ingredients.appliances.length,
                ),
              ),
            ],
          ),
          Positioned(
            top: 57,
            left: 180,
            child: Image.asset(
              AppImages.veggies1,
              width: 321,
              height: 130,
            ),
          ),
          Positioned(
            top: 10,
            left: 260,
            child: Image.asset(
              AppImages.veggies2,
              width: 215,
              height: 215,
            ),
          ),
        ],
      ),
    );
  }
}
