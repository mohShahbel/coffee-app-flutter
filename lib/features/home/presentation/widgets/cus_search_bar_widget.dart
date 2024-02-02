import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';

class CustomSearchBarWidget extends StatelessWidget {
  const CustomSearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      constraints: const BoxConstraints(minWidth: 303, minHeight: 50),
      elevation: const MaterialStatePropertyAll(0),
      backgroundColor: MaterialStatePropertyAll(AppColors.lightGrey),
      hintText: "Search Coffee",
      hintStyle: MaterialStatePropertyAll(
        CustomTextStyles.lato400style12.copyWith(color: AppColors.grey),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: AppColors.grey, width: 1.5),
        ),
      ),
      leading: SvgPicture.asset(Assets.imagesSearchIcon),
      trailing: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Assets.imagesSearchFilteringIcon),
        )
      ],
    );
  }
}
