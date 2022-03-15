import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:web_motors/modules/list_cars/domain/repositories/get_list_car_repository.dart';
import 'package:web_motors/modules/list_cars/domain/usecases/get_list_car/get_list_car_usecase.dart';
import 'package:web_motors/modules/list_cars/domain/usecases/get_list_car/get_list_car_usecase_impl.dart';
import 'package:web_motors/modules/list_cars/external/datasource/get_list_car_datasource_impl.dart';
import 'package:web_motors/modules/list_cars/infra/datasource/get_list_car_datasource.dart';
import 'package:web_motors/modules/list_cars/infra/repositories/get_list_car_repository_impl.dart';
import 'package:web_motors/modules/list_cars/presentation/controllers/list_car_controller.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    //dio
    getIt.registerLazySingleton<Dio>(() => Dio());

    //datasources
    getIt.registerLazySingleton<GetListCarDataSource>(
      () => GetListCarDataSourceImpl(dio: getIt()),
    );

    //repositories
    getIt.registerLazySingleton<GetListCarRepository>(
      () => GetListCarRepositoryImpl(dataSource: getIt()),
    );

    //usecases
    getIt.registerLazySingleton<GetListCarUsecase>(
      () => GetListCarUsecaseImpl(getListCarRepository: getIt()),
    );

    //controllers
    getIt.registerLazySingleton(() => ListCarController(getIt()));
  }
}
