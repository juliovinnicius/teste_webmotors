import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_motors/shared/constants/constants.dart';
import 'package:web_motors/shared/widgets/text_widget.dart';

class DifferentialsWidget extends StatelessWidget {
  const DifferentialsWidget({
    Key? key,
    required this.context,
    required this.isCarDelivery,
  }) : super(key: key);

  final BuildContext context;
  final bool isCarDelivery;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 16, right: 5),
          margin: const EdgeInsets.only(bottom: 15, top: 15),
          child: SvgPicture.network(
            isCarDelivery ? carDelivery : trocaTroco,
            height: 40,
          ),
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: isCarDelivery ? 'CarDelivery disponível' : 'Troca + Troco',
              fontSize: 13,
              colorStyle: Colors.black,
              fontWheight: FontWeight.w600,
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextWidget(
                text: isCarDelivery
                    ? 'Compre online e receba o carro em casa!'
                    : 'Troque de carro e saia com a diferença em dinheiro para usar como quiser',
                fontSize: 13,
                colorStyle: Colors.black,
                fontWheight: FontWeight.normal,
              ),
            ),
            isCarDelivery
                ? GestureDetector(
                    onTap: () async {},
                    child: Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const TextWidget(
                        text: 'Conheça',
                        fontSize: 14,
                        colorStyle: primaryColor,
                        fontWheight: FontWeight.bold,
                      ),
                    ),
                  )
                : Container()
          ],
        ),
      ],
    );
  }
}
