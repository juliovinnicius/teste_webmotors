import 'package:web_motors/modules/list_cars/infra/model/car_model.dart';

abstract class GetListCarDataSource {
  Future<List<CarModel>> getList(int page);
}
