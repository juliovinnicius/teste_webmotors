import 'package:dartz/dartz.dart';
import 'package:web_motors/modules/list_cars/domain/entities/car_entity.dart';
import 'package:web_motors/modules/list_cars/domain/errors/errors.dart';

abstract class GetListCarRepository {
  Future<Either<FailureGetCars, List<CarEntity>?>> getList(int page);
}
