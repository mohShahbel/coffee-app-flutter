import 'package:coffee_app_flutter/core/utils/app_strings.dart';
import 'package:coffee_app_flutter/core/widgets/cus_header_text.dart';
import 'package:flutter/material.dart';

import '../cus_home_app_bar_widget.dart';

class CustomHomeHeaderSection extends StatelessWidget {
  const CustomHomeHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40),
        CustomHomeAppBarWidget(),
        SizedBox(height: 14),
        CustomHeaderText(text: "${AppStrings.goodMorning}, Dityo"),
        SizedBox(height: 32),
      ],
    );
  }
}
