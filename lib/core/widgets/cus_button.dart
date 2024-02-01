import 'package:coffee_app_flutter/core/utils/app_colors.dart';
import 'package:coffee_app_flutter/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    this.color,
    required this.text,
    this.onPressed,
    this.height,
    this.width,
    this.textStyle,
  });
  final double? height;
  final double? width;
  final Color? color;
  final String text;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 64,
      child: ElevatedButton(
        onPressed: onPressed ?? () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(34),
          ),
        ),
        child: Text(
          text,
          style: textStyle ?? CustomTextStyles.lato700style20,
        ),
      ),
    );
  }
}
