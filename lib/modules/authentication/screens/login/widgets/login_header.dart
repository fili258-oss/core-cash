import 'package:core_cash/utils/constants/image_strings.dart';
import 'package:core_cash/utils/constants/sizes.dart';
import 'package:core_cash/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          AppText.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: AppSizes.sm),
        Text(
          AppText.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: AppSizes.spaceBtwSections),
        SvgPicture.asset(
          AppImage.onLogo,
          height: 130,
        ),
                
      ],
    );
  }
}
