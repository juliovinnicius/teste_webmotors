import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_motors/shared/constants/constants.dart';
import 'package:web_motors/shared/widgets/text_widget.dart';

class SeeParcelButtonWidget extends StatelessWidget {
  const SeeParcelButtonWidget({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 5),
      width: MediaQuery.of(context).size.width * 0.4,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(primary: primaryColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TextWidget(
              text: 'Ver Parcelas',
              fontSize: 15,
              colorStyle: Colors.white,
              fontWheight: FontWeight.bold,
            ),
            SvgPicture.network(
              santanderImg,
              height: 18,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
