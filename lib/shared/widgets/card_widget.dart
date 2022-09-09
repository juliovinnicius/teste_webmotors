import 'package:flutter/material.dart';
import 'package:web_motors/modules/list_cars/presentation/controllers/list_car_controller.dart';
import 'package:web_motors/shared/constants/constants.dart';
import 'package:web_motors/shared/utils/utils.dart';
import 'package:web_motors/shared/widgets/flash_widget.dart';
import 'package:web_motors/shared/widgets/label_widget.dart';
import 'package:web_motors/shared/widgets/sticker_widget.dart';
import 'package:web_motors/shared/widgets/text_widget.dart';
import 'package:web_motors/shared/widgets/title_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.controller,
    required this.index,
  }) : super(key: key);

  final ListCarController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, left: 16, right: 16, top: index == 0 ? 20 : 0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Center(
                      child: Image.network(
                        controller.list![index].image!,
                        errorBuilder: (context, error, stackTrace) => const Icon(
                          Icons.error,
                          size: 150,
                        ),
                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const StickerWidget(urlImage: megaFeirao),
                  const FlagsWidget(
                    bottom: -30,
                    right: 50,
                    imageUrl: trocaTroco,
                  ),
                  const FlagsWidget(
                    bottom: -30,
                    right: 25,
                    imageUrl: carDelivery,
                  ),
                ],
              ),
            ),
            TitleWidget(
              make: '${controller.list![index].make!} ',
              model: controller.list![index].model!,
              fontSizeMake: 20,
              fontSizeModel: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 5),
              margin: const EdgeInsets.only(bottom: 10),
              width: double.infinity,
              child: TextWidget(
                text: controller.list![index].version!,
                colorStyle: Colors.grey[600]!,
                fontSize: 17,
                fontWheight: FontWeight.normal,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 5),
              margin: const EdgeInsets.only(bottom: 10),
              width: double.infinity,
              child: TextWidget(
                text: "R\$ ${controller.list![index].price!}",
                colorStyle: Colors.black,
                fontSize: 20,
                fontWheight: FontWeight.normal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LabelWidget(
                    icon: const Icon(
                      Icons.date_range,
                      color: Colors.white,
                    ),
                    text: "${controller.list![index].yearFab!}/${controller.list![index].yearModel!}",
                  ),
                  LabelWidget(
                    icon: const Icon(
                      Icons.speed,
                      color: Colors.white,
                    ),
                    text: "${controller.list![index].km!} km",
                  ),
                  LabelWidget(
                    icon: const Icon(
                      Icons.format_color_fill,
                      color: Colors.white,
                    ),
                    text: controller.list![index].color!,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
