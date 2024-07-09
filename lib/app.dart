import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/utils/constants/colors.dart';
import 'package:to_do/utils/theme/theme.dart';
import 'features/authentication/screens/onboarding_screens/onboarding.dart';

//--Use this Class to setup themes, initial Bindings, any animations and much more
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ToDoAppTheme.lightTheme,
      darkTheme: ToDoAppTheme.darkTheme,
      home: const OnBoardingScreen(),

      ///show loader or circular progress indicator meanwhile authentication repository is deciding to show relevant screen
      ///home:const Scaffold(backgroundColor: ToDoColors.primary,body: Center(child: CircularProgressIndicator(color: Colors.white,),),)
    );
  }
}
