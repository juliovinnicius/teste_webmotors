import 'package:dartz/dartz.dart';

import 'package:web_motors/modules/list_cars/domain/entities/car_entity.dart';
import 'package:web_motors/modules/list_cars/domain/errors/errors.dart';
import 'package:web_motors/modules/list_cars/domain/repositories/get_list_car_repository.dart';
import 'package:web_motors/modules/list_cars/infra/datasource/get_list_car_datasource.dart';

class GetListCarRepositoryImpl implements GetListCarRepository {
  final GetListCarDataSource dataSource;

  GetListCarRepositoryImpl({required this.dataSource});

  @override
  Future<Either<FailureGetCars, List<CarEntity>?>> getList(int page) async {
    try {
      final result = await dataSource.getList(page);
      return Right(result);
    } catch (e) {
      return Left(DataSourceError());
    }
  }
}
