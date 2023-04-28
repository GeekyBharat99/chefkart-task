import 'package:cached_network_image/cached_network_image.dart';
import 'package:chefkart/models/dish.dart';
import 'package:chefkart/utils/colors.dart';
import 'package:chefkart/utils/text_styles.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.dish,
  });

  final Dish dish;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            height: 68,
            width: 92,
            imageUrl: dish.image,
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            placeholder: (context, url) => Image.asset(
              "assets/cupertino_activity_indicator.gif",
              height: 68,
              width: 92,
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        Positioned(
          top: 57,
          child: Container(
            height: 22,
            width: 58,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  blurRadius: 4,
                  offset: Offset(0, 3),
                  color: AppColors.grey,
                )
              ],
              borderRadius: BorderRadius.circular(3),
              color: AppColors.white,
              border: Border.all(
                color: AppColors.orange,
                width: 0.5,
              ),
            ),
            child: Center(
              child: Text(
                "Add +",
                style: AppTextStyles.dmSans.copyWith(
                  fontSize: 11,
                  color: AppColors.orange,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
