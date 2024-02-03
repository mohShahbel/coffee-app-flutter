import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../data/models/drink_category_model.dart';
import 'cus_drink_category_item.dart';

class CustomDrinkCategoryListView extends StatefulWidget {
  const CustomDrinkCategoryListView({super.key, required this.dataList});
  final List<DrinkCategory> dataList;

  @override
  State<CustomDrinkCategoryListView> createState() =>
      _CustomDrinkCategoryListViewState();
}

class _CustomDrinkCategoryListViewState
    extends State<CustomDrinkCategoryListView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        itemCount: widget.dataList.length,
        clipBehavior: Clip.none,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return CustomDrinkCategoryItem(
            model: widget.dataList[index],
            backGroundColor: currentIndex == index
                ? AppColors.primaryColor
                : Colors.transparent,
            color: currentIndex == index ? AppColors.offWhite : Colors.black,
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
          );
        },
      ),
    );
  }
}
