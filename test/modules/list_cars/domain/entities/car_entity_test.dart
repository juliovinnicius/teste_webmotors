import 'package:flutter_test/flutter_test.dart';
import 'package:web_motors/modules/list_cars/domain/entities/car_entity.dart';

main() {
  test('Espero que a entidade não seja nula', () {
    CarEntity carEntity = CarEntity(
      id: 0,
      make: '1',
      model: 'teste',
      version: 'teste',
      image: 'teste',
      km: 0,
      price: 'teste',
      yearModel: 2014,
      yearFab: 2015,
      color: 'teste',
    );

    expect(carEntity, isNotNull);
  });
}
