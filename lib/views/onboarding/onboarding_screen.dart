import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/size_config.dart';
import 'package:flutter_application_1/views/onboarding/components/body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body() //todo membuat class body yang berisi
    );
  }
}