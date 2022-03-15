import 'package:mobx/mobx.dart';
import 'package:web_motors/modules/list_cars/domain/entities/car_entity.dart';
import 'package:web_motors/modules/list_cars/domain/usecases/get_list_car/get_list_car_usecase.dart';
import 'package:web_motors/modules/list_cars/presentation/controllers/list_car_state.dart';

part 'list_car_controller.g.dart';

class ListCarController = _ListCarBase with _$ListCarController;

abstract class _ListCarBase with Store {
  _ListCarBase(this._getListCarUsecase) {
    getList();
  }

  final GetListCarUsecase? _getListCarUsecase;

  @observable
  ObservableList<CarEntity>? list;

  @observable
  ListCarState state = ListCarStart();

  @observable
  List<CarEntity> newItens = [];

  @observable
  bool isLoading = false;

  @observable
  bool isBusy = false;

  int page = 1;

  @action
  getList() async {
    isBusy = true;
    state = ListCarLoading();

    var result = await _getListCarUsecase!(1);

    result.fold((l) => ListCarError(l), (r) => list = r!.asObservable());

    state = ListCarSucess(list);
    isBusy = false;
  }

  @action
  loadMoreCars() async {
    isBusy = true;
    isLoading = true;
    state = ListCarLoading();

    page++;

    var result = await _getListCarUsecase!(page);

    result.fold((l) => ListCarError(l), (r) => newItens = r!);

    if (result.isRight() && newItens.isNotEmpty) {
      list!.addAll(newItens);
    }

    state = ListCarSucess(list);
    isBusy = false;
    isLoading = false;
  }
}
