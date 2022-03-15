import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:web_motors/modules/list_cars/domain/entities/car_entity.dart';
import 'package:web_motors/modules/list_cars/domain/errors/errors.dart';
import 'package:web_motors/modules/list_cars/infra/datasource/get_list_car_datasource.dart';
import 'package:web_motors/modules/list_cars/infra/model/car_model.dart';
import 'package:web_motors/modules/list_cars/infra/repositories/get_list_car_repository_impl.dart';

import 'get_list_car_impl_test.mocks.dart';

@GenerateMocks([GetListCarDataSource])
main() async {
  final getListCarDataSourceMock = MockGetListCarDataSource();
  final repository = GetListCarRepositoryImpl(dataSource: getListCarDataSourceMock);

  test('deve retornar uma lista de CarEntity', () async {
    when(getListCarDataSourceMock.getList(1)).thenAnswer((_) async => <CarModel>[]);

    final result = await repository.getList(1);
    expect(result | null, isA<List<CarEntity>>());
  });

  test('deve retornar um DataSourceError se o datasource falhar ', () async {
    when(getListCarDataSourceMock.getList(1)).thenThrow(Exception());

    final result = await repository.getList(1);
    expect(result.fold(id, id), isA<DataSourceError>());
  });
}
