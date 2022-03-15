// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_car_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListCarController on _ListCarBase, Store {
  final _$listAtom = Atom(name: '_ListCarBase.list');

  @override
  ObservableList<CarEntity>? get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(ObservableList<CarEntity>? value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$stateAtom = Atom(name: '_ListCarBase.state');

  @override
  ListCarState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(ListCarState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$newItensAtom = Atom(name: '_ListCarBase.newItens');

  @override
  List<CarEntity> get newItens {
    _$newItensAtom.reportRead();
    return super.newItens;
  }

  @override
  set newItens(List<CarEntity> value) {
    _$newItensAtom.reportWrite(value, super.newItens, () {
      super.newItens = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_ListCarBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$isBusyAtom = Atom(name: '_ListCarBase.isBusy');

  @override
  bool get isBusy {
    _$isBusyAtom.reportRead();
    return super.isBusy;
  }

  @override
  set isBusy(bool value) {
    _$isBusyAtom.reportWrite(value, super.isBusy, () {
      super.isBusy = value;
    });
  }

  final _$getListAsyncAction = AsyncAction('_ListCarBase.getList');

  @override
  Future getList() {
    return _$getListAsyncAction.run(() => super.getList());
  }

  final _$loadMoreCarsAsyncAction = AsyncAction('_ListCarBase.loadMoreCars');

  @override
  Future loadMoreCars() {
    return _$loadMoreCarsAsyncAction.run(() => super.loadMoreCars());
  }

  @override
  String toString() {
    return '''
list: ${list},
state: ${state},
newItens: ${newItens},
isLoading: ${isLoading},
isBusy: ${isBusy}
    ''';
  }
}
