import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';

class CustomCurrentLocationWidget extends StatelessWidget {
  const CustomCurrentLocationWidget({super.key, this.city, this.district});

  final String? city;
  final String? district;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: [
          Icon(Icons.location_pin, color: AppColors.primaryColor),
          Text(
            city ?? "Al-Mukalla, ",
            style: CustomTextStyles.lato400style12.copyWith(
              fontWeight: FontWeight.w800,
              color: AppColors.black,
            ),
          ),
          Text(district ?? "Fawah",
              style: CustomTextStyles.lato400style12.copyWith(
                fontWeight: FontWeight.w800,
                color: AppColors.black,
              ))
        ],
      ),
    );
  }
}
