import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:web_motors/modules/list_cars/domain/entities/car_entity.dart';
import 'package:web_motors/modules/list_cars/domain/errors/errors.dart';
import 'package:web_motors/modules/list_cars/domain/repositories/get_list_car_repository.dart';
import 'package:web_motors/modules/list_cars/domain/usecases/get_list_car/get_list_car_usecase_impl.dart';

import 'get_list_cars_usecase_test.mocks.dart';

@GenerateMocks([GetListCarRepository])
main() {
  final getListCarRepositoryMock = MockGetListCarRepository();
  final usecase = GetListCarUsecaseImpl(getListCarRepository: getListCarRepositoryMock);

  test('Deve retornar uma lista de CarEntity', () async {
    when(getListCarRepositoryMock.getList(1)).thenAnswer((_) async => const Right(<CarEntity>[]));

    final result = await usecase(1);

    expect(result | null, isA<List<CarEntity>>());
  });

  test('Deve retornar um exception caso o valor da página seja menor igual a 0 ', () async {
    when(getListCarRepositoryMock.getList(0)).thenAnswer((_) async => const Right(<CarEntity>[]));

    //Testando o valor do page igual a 0
    var result = await usecase(0);
    expect(result.fold(id, id), isA<InvalidPageError>());

    //Testando o valor do page menor que 0
    result = await usecase(-1);
    expect(result.fold(id, id), isA<InvalidPageError>());
  });
}
