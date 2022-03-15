import 'package:flutter/material.dart';

class StickerWidget extends StatelessWidget {
  const StickerWidget({
    Key? key,
    required this.urlImage,
  }) : super(key: key);

  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 100,
      right: 100,
      child: SizedBox(
        height: 25,
        child: Image.network(urlImage),
      ),
    );
  }
}
