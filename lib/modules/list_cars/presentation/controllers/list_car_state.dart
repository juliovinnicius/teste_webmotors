import 'package:web_motors/modules/list_cars/domain/entities/car_entity.dart';
import 'package:web_motors/modules/list_cars/domain/errors/errors.dart';

abstract class ListCarState {}

class ListCarSucess implements ListCarState {
  final List<CarEntity>? list;

  ListCarSucess(this.list);
}

class ListCarStart implements ListCarState {}

class ListCarLoading implements ListCarState {}

class ListCarError implements ListCarState {
  final FailureGetCars error;

  ListCarError(this.error);
}
