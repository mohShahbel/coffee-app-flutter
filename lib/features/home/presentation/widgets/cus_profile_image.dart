import 'package:coffee_app_flutter/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomProfileImage extends StatelessWidget {
  const CustomProfileImage({super.key, this.imgUrl});

  final String? imgUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: CircleAvatar(
        backgroundImage: imgUrl != null ? AssetImage(imgUrl!) : null,
        backgroundColor: Colors.grey[300],
        child: imgUrl == null
            ? Icon(
                Icons.person,
                size: 45,
                color: AppColors.deepGrey,
              )
            : null,
      ),
    );
  }
}
