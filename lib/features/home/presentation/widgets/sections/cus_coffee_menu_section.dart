import 'package:coffee_app_flutter/core/utils/app_assets.dart';
import 'package:coffee_app_flutter/core/utils/app_strings.dart';
import 'package:coffee_app_flutter/features/home/data/models/drink_category_model.dart';
import 'package:flutter/material.dart';

import '../cus_drink_category_list_view.dart';

final List<DrinkCategory> drinkCategoryData = [
  DrinkCategory(
    name: AppStrings.cappuccino,
    image: Assets.imagesCappuccinoIcon,
  ),
  DrinkCategory(
    name: AppStrings.coldBrew,
    image: Assets.imagesColdBrewIcon,
  ),
  DrinkCategory(
    name: AppStrings.espresso,
    image: Assets.imagesEspressoIcon,
  ),
];

class CoffeeMenuSection extends StatelessWidget {
  const CoffeeMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDrinkCategoryListView(dataList: drinkCategoryData),
        const SizedBox(height: 8),
      ],
    );
  }
}


