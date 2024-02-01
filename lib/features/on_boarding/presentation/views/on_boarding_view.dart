import 'package:coffee_app_flutter/core/utils/app_colors.dart';
import 'package:coffee_app_flutter/core/utils/app_strings.dart';
import 'package:coffee_app_flutter/core/widgets/cus_button.dart';
import 'package:coffee_app_flutter/features/on_boarding/presentation/widgets/on_boarding_widget_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            decoration: BoxDecoration(
              color: AppColors.black,
              image: const DecorationImage(
                fit: BoxFit.cover,
                opacity: 0.5,
                image: AssetImage("assets/images/Onboarding.png"),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: constraints.maxWidth / 8.5,
                  vertical: constraints.maxHeight / 11.2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OnBoardingWidgetBody(
                    controller: _controller,
                    onPageChanged: (index) => setState(
                      () => currentIndex = index,
                    ),
                  ),
                  const SizedBox(height: 36),
                  const CustomBtn(text: AppStrings.getStarted),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
