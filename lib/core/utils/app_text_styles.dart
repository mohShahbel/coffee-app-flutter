import 'package:coffee_app_flutter/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyles {
  static final lato700style20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.lightGrey,
  );
  static final lato400style12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.offWhite,
  );
}
