import 'package:chefkart/utils/colors.dart';
import 'package:chefkart/utils/helper_widgets.dart';
import 'package:chefkart/utils/images.dart';
import 'package:chefkart/utils/text_styles.dart';
import 'package:flutter/material.dart';

class DateAndTimePicker extends StatelessWidget {
  const DateAndTimePicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 42,
          color: AppColors.black,
        ),
        Positioned(
          top: 20,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IntrinsicHeight(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 18,
                ),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4,
                      color: AppColors.grey2,
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          AppImages.date,
                          alignment: Alignment.center,
                          height: 20,
                          width: 20,
                        ),
                        addHorizontalSpace(8),
                        Text(
                          "21 May 2021",
                          style: AppTextStyles.dmSans.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                          ),
                        )
                      ],
                    ),
                    addHorizontalSpace(14),
                    const VerticalDivider(color: AppColors.grey),
                    addHorizontalSpace(14),
                    Row(
                      children: [
                        Image.asset(
                          AppImages.time2,
                          alignment: Alignment.center,
                          height: 20,
                          width: 20,
                        ),
                        addHorizontalSpace(8),
                        Text(
                          "10:30 Pm-12:30 Pm",
                          style: AppTextStyles.dmSans.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
