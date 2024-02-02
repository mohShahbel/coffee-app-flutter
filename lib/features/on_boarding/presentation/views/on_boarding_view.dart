import 'package:coffee_app_flutter/core/functions/navigation.dart';
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

  void _onTap() {
    if (currentIndex == 2) {
      customReplacementNavigation(context, "/homeNavAr");
      return;
    }
    _controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, size) {
          return Container(
            padding: EdgeInsets.symmetric(
              horizontal: size.maxWidth / 8.5, // equal 45 px
              vertical: size.maxHeight / 11.2, // equal 70 px
            ),
            decoration: BoxDecoration(
              color: AppColors.black,
              image: const DecorationImage(
                fit: BoxFit.cover,
                opacity: 0.5,
                image: AssetImage("assets/images/Onboarding.png"),
              ),
            ),
            child: Column(
              children: [
                OnBoardingWidgetBody(
                    controller: _controller,
                    onPageChanged: (index) =>
                        setState(() => currentIndex = index)),
                const SizedBox(height: 36),
                CustomBtn(text: AppStrings.getStarted, onPressed: _onTap),
              ],
            ),
          );
        },
      ),
    );
  }
}
