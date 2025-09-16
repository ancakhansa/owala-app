import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/consts.dart';
import 'package:flutter_application_1/utils/size_config.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({super.key, required this.text, required this.image});

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.cover,
        ),
        Spacer(),
        Text(
          "Owala",
          style: TextStyle(
            color: primaryColor,
            fontSize: getProporsionateScreenWidth(30),
            fontWeight: FontWeight.bold // buat menjadi adaptif
          ),
        ),
        SizedBox(height: 15),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: primaryColor
          ),
        )
      ],
    );
  }
}