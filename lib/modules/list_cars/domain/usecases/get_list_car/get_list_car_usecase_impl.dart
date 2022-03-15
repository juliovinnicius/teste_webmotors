import 'package:web_motors/modules/list_cars/domain/errors/errors.dart';
import 'package:web_motors/modules/list_cars/domain/entities/car_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:web_motors/modules/list_cars/domain/repositories/get_list_car_repository.dart';
import 'package:web_motors/modules/list_cars/domain/usecases/get_list_car/get_list_car_usecase.dart';

class GetListCarUsecaseImpl implements GetListCarUsecase {
  final GetListCarRepository getListCarRepository;

  GetListCarUsecaseImpl({required this.getListCarRepository});

  @override
  Future<Either<FailureGetCars, List<CarEntity>?>> call(int page) async {
    if (page <= 0) {
      return Left(InvalidPageError());
    }
    return getListCarRepository.getList(page);
  }
}
