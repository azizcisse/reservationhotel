import 'package:flutter/material.dart';
import '../utilis/styles_app.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;

  const AppDoubleTextWidget(
      {super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            print("Vous avez cliqué");
          },
          child: Text(
            smallText,
            style: Styles.textStyle,
          ),
        ),
      ],
    );
  }
}
