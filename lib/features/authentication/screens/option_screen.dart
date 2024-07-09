import 'package:flutter/material.dart';
import 'package:to_do/common/styles/spacing_styles.dart';
import 'package:to_do/utils/constants/colors.dart';
import 'package:to_do/utils/constants/sizes.dart';
import 'package:to_do/utils/constants/text_strings.dart';

import '../../../common/widgets/app_logo_title.dart';
import '../../../utils/constants/image_strings.dart';

class OptionScreen extends StatelessWidget {
  const OptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ToDoSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const SizedBox(
                height: ToDoSizes.spaceBetweenSections,
              ),

              /// app logo + app name + title + subtitle
              const AppLogoAndTitle(),
              const SizedBox(
                height: ToDoSizes.spaceBetweenSections * 2.5,
              ),
              Text(
                ToDoTexts.optionTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: ToDoSizes.spaceBetweenItems,
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(
                  left: ToDoSizes.md,
                  right: ToDoSizes.md,
                ),
                child: Text(
                  ToDoTexts.optionSubtitle,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              )),
              const SizedBox(
                height: ToDoSizes.spaceBetweenSections * 2,
              ),

              /// login and create account buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(ToDoTexts.signIn),
                  )),
              const SizedBox(
                height: ToDoSizes.spaceBetweenItems,
              ),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(ToDoTexts.createAccount),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
