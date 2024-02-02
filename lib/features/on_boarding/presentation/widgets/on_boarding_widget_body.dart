import 'package:coffee_app_flutter/core/utils/app_colors.dart';
import 'package:coffee_app_flutter/core/utils/app_strings.dart';
import 'package:coffee_app_flutter/core/utils/app_text_styles.dart';
import 'package:coffee_app_flutter/features/on_boarding/presentation/widgets/cus_smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  const OnBoardingWidgetBody({
    super.key,
    required this.controller,
    this.onPageChanged,
  });

  final PageController controller;
  final Function(int index)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(builder: (context, size) {
        return PageView.builder(
          clipBehavior: Clip.none,
          itemCount: 3,
          controller: controller,
          physics: const BouncingScrollPhysics(),
          onPageChanged: onPageChanged,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: size.maxHeight / 2.7, // equal 200 px
                  child: Text(
                    "Good coffee, Good friends, let it blends",
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.lato700style20.copyWith(
                      fontSize: 28,
                      color: AppColors.grey,
                    ),
                  ),
                ),
                SizedBox(height: size.maxHeight / 39),
                SizedBox(
                  width: 175,
                  child: Text(
                    AppStrings.theBestGrain,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.lato400style12,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: size.maxHeight / 39),
                CustomSmoothPageIndicator(controller: controller),
              ],
            );
          },
        );
      }),
    );
  }
}
