import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.colorStyle,
    required this.fontWheight,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final Color colorStyle;
  final FontWeight fontWheight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: colorStyle,
        fontSize: fontSize,
        fontWeight: fontWheight,
      ),
    );
  }
}
