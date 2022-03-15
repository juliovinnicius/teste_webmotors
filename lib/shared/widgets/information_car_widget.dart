import 'package:flutter/material.dart';
import 'package:web_motors/modules/list_cars/domain/entities/car_entity.dart';
import 'package:web_motors/shared/widgets/text_widget.dart';

class InformationCarWidget extends StatelessWidget {
  const InformationCarWidget({Key? key, required this.car}) : super(key: key);

  final CarEntity car;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.only(left: 16, right: 5),
        margin: const EdgeInsets.only(bottom: 10),
        width: MediaQuery.of(context).size.width * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextWidget(
                  text: 'Ano',
                  fontSize: 13,
                  colorStyle: Colors.grey,
                  fontWheight: FontWeight.normal,
                ),
                TextWidget(
                  text: "${car.yearFab!}/${car.yearModel!}",
                  fontSize: 13,
                  colorStyle: Colors.black,
                  fontWheight: FontWeight.bold,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextWidget(
                  text: 'Km',
                  fontSize: 13,
                  colorStyle: Colors.grey,
                  fontWheight: FontWeight.normal,
                ),
                TextWidget(
                  text: car.km.toString(),
                  fontSize: 13,
                  colorStyle: Colors.black,
                  fontWheight: FontWeight.bold,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextWidget(
                  text: 'Cor',
                  fontSize: 13,
                  colorStyle: Colors.grey,
                  fontWheight: FontWeight.normal,
                ),
                TextWidget(
                  text: car.color!,
                  fontSize: 13,
                  colorStyle: Colors.black,
                  fontWheight: FontWeight.bold,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
