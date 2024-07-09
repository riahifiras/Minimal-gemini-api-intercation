import 'package:flutter/material.dart';

import '../../utils/constants/image_strings.dart';
import '../../utils/constants/text_strings.dart';

class AppLogoAndTitle extends StatelessWidget {
  const AppLogoAndTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Image(
          height: 150,
          image: AssetImage(ToDoImages.appLogo),
        ),
        Text(
          ToDoTexts.appName,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ],
    );
  }
}
