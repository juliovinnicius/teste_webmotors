import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FlagsWidget extends StatelessWidget {
  const FlagsWidget({
    Key? key,
    required this.bottom,
    required this.right,
    required this.imageUrl,
  }) : super(key: key);

  final double bottom;
  final double right;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottom,
      right: right,
      child: SvgPicture.network(
        imageUrl,
        height: 30,
      ),
    );
  }
}
