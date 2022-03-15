import 'package:flutter/material.dart';
import 'package:web_motors/shared/constants/constants.dart';
import 'package:web_motors/shared/widgets/text_widget.dart';

class LabelWidget extends StatelessWidget {
  const LabelWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final Widget icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 5),
          TextWidget(
            text: text,
            colorStyle: Colors.white,
            fontSize: 12,
            fontWheight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
