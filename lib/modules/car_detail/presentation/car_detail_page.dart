import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:web_motors/modules/list_cars/domain/entities/car_entity.dart';
import 'package:web_motors/shared/utils/utils.dart';
import 'package:web_motors/shared/widgets/differentials_widget.dart';
import 'package:web_motors/shared/widgets/information_car_widget.dart';
import 'package:web_motors/shared/widgets/see_parcel_buttom_widget.dart';
import 'package:web_motors/shared/widgets/text_widget.dart';
import 'package:web_motors/shared/widgets/title_widget.dart';

class CarDetailPage extends StatefulWidget {
  final CarEntity car;

  const CarDetailPage({
    Key? key,
    required this.car,
  }) : super(key: key);

  @override
  State<CarDetailPage> createState() => _CarDetailPageState();
}

class _CarDetailPageState extends State<CarDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: _body(),
    );
  }

  _appbar() => AppBar(
        title: SvgPicture.asset("assets/webmotors_image.svg"),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      );

  _body() => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
              child: Image.network(
                httpsInImages(widget.car.image!),
                errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.error,
                  size: 150,
                ),
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            TitleWidget(
              make: '${widget.car.make!} ',
              model: widget.car.model!,
              fontSizeMake: 25,
              fontSizeModel: 25,
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 5),
              margin: const EdgeInsets.only(bottom: 10),
              width: double.infinity,
              child: TextWidget(
                text: widget.car.version!,
                colorStyle: Colors.grey[600]!,
                fontSize: 15,
                fontWheight: FontWeight.normal,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 5),
              margin: const EdgeInsets.only(bottom: 10),
              width: double.infinity,
              child: TextWidget(
                text: "R\$ ${widget.car.price!}",
                colorStyle: Colors.black,
                fontSize: 35,
                fontWheight: FontWeight.bold,
              ),
            ),
            SeeParcelButtonWidget(context: context),
            InformationCarWidget(car: widget.car),
            const Divider(
              height: 2,
              color: Colors.grey,
            ),
            DifferentialsWidget(context: context, isCarDelivery: false),
            const Divider(
              height: 2,
              color: Colors.grey,
            ),
            DifferentialsWidget(context: context, isCarDelivery: true),
            const Divider(
              height: 2,
              color: Colors.grey,
            ),
          ],
        ),
      );
}
