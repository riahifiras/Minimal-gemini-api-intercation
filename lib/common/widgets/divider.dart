import 'package:flutter/material.dart';
import 'package:to_do/utils/helpers/helper_functions.dart';

import '../../utils/constants/colors.dart';

class ToDoDivider extends StatelessWidget {
  const ToDoDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = ToDoHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
          color: dark ? ToDoColors.darkGrey : ToDoColors.grey,
          thickness: 0.5,
          indent: 40,
          endIndent: 40,
        ))
      ],
    );
  }
}
