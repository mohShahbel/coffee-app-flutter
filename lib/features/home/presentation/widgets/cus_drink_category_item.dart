import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../data/models/drink_category_model.dart';

class CustomDrinkCategoryItem extends StatelessWidget {
  const CustomDrinkCategoryItem({
    super.key,
    required this.model,
    required this.backGroundColor,
    required this.color,
    this.onTap,
  });

  final DrinkCategory model;
  final Color backGroundColor;
  final Color color;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 98,
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              model.image,
              colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
            ),
            const SizedBox(width: 3.5),
            Text(
              model.name,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.lato400style12.copyWith(
                fontWeight: FontWeight.w800,
                fontSize: 11,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
