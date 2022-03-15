import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:web_motors/modules/list_cars/presentation/controllers/list_car_controller.dart';
import 'package:web_motors/shared/constants/constants.dart';
import 'package:web_motors/shared/widgets/card_widget.dart';

class ListCarPage extends StatefulWidget {
  const ListCarPage({Key? key}) : super(key: key);

  @override
  State<ListCarPage> createState() => _ListCarPageState();
}

class _ListCarPageState extends State<ListCarPage> {
  ListCarController controller = GetIt.I.get<ListCarController>();

  final ScrollController _scrollController = ScrollController(initialScrollOffset: 0.0);

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() async {
      if (_scrollController.offset == _scrollController.position.maxScrollExtent) {
        await controller.loadMoreCars();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: _appbar(),
      body: _body(size),
    );
  }

  _appbar() => AppBar(
        title: SvgPicture.asset("assets/webmotors_image.svg"),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: primaryColor),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_alt, color: primaryColor),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: primaryColor),
          )
        ],
      );

  _body(Size size) => Observer(
        builder: (_) => controller.isBusy && !controller.isLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: primaryColor,
                ),
              )
            : Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: controller.list!.length,
                      controller: _scrollController,
                      itemBuilder: (_, index) => GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/car_detail', arguments: controller.list![index]),
                        child: CardWidget(
                          controller: controller,
                          index: index,
                        ),
                      ),
                    ),
                  ),
                  controller.isLoading
                      ? Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 15, bottom: 15),
                          height: 20,
                          width: 20,
                          child: const CircularProgressIndicator(
                            color: primaryColor,
                          ),
                        )
                      : Container()
                ],
              ),
      );
}
