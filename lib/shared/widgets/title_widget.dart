import 'package:flutter/material.dart';
import 'package:web_motors/shared/constants/constants.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.make,
    required this.model,
    required this.fontSizeMake,
    required this.fontSizeModel,
  }) : super(key: key);

  final String make;
  final String model;
  final double fontSizeMake;
  final double fontSizeModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 5),
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      width: double.infinity,
      child: RichText(
        text: TextSpan(
          text: make,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: fontSizeMake,
          ),
          children: [
            TextSpan(
              text: model,
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: fontSizeModel,
              ),
            )
          ],
        ),
      ),
    );
  }
}
