import 'package:coffee_app_flutter/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../utils/app_text_styles.dart';

class CustomHeaderText extends StatelessWidget {
  const CustomHeaderText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: CustomTextStyles.lato700style20.copyWith(
          color: AppColors.black,
        ));
  }
}
