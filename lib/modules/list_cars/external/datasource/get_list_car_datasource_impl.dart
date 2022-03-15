import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:web_motors/modules/list_cars/domain/errors/errors.dart';

import 'package:web_motors/modules/list_cars/infra/datasource/get_list_car_datasource.dart';
import 'package:web_motors/modules/list_cars/infra/model/car_model.dart';
import 'package:web_motors/shared/constants/constants.dart';

class GetListCarDataSourceImpl implements GetListCarDataSource {
  final Dio dio;

  GetListCarDataSourceImpl({required this.dio});
  @override
  Future<List<CarModel>> getList(int page) async {
    Response response = await dio.get('$pathApi/Vehicles?Page=$page');

    if (response.statusCode == 200) {
      final list = (response.data as List).map((e) => CarModel.fromJson(e)).toList().asObservable();

      return list;
    } else {
      throw DataSourceError();
    }
  }
}
