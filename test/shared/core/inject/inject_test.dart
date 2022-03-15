import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:web_motors/modules/list_cars/domain/entities/car_entity.dart';
import 'package:web_motors/modules/list_cars/domain/usecases/get_list_car/get_list_car_usecase.dart';
import 'package:web_motors/modules/list_cars/domain/usecases/get_list_car/get_list_car_usecase_impl.dart';
import 'package:web_motors/shared/core/inject/inject.dart';

main() {
  Inject.init();

  test('Deve retornar o usecase sem erro', () {
    final usecase = GetIt.I.get<GetListCarUsecase>();

    expect(usecase, isA<GetListCarUsecaseImpl>());
  });
  test('Deve retornar uma lista de CarEntity', () async {
    final usecase = GetIt.I.get<GetListCarUsecase>();

    final result = await usecase(1);
    expect(result | null, isA<List<CarEntity>>());
  });
}
