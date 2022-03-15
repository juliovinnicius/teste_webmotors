// Mocks generated by Mockito 5.1.0 from annotations
// in web_motors/test/modules/list_cars/domain/usecases/get_list_cars/get_list_cars_usecase_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:web_motors/modules/list_cars/domain/entities/car_entity.dart'
    as _i6;
import 'package:web_motors/modules/list_cars/domain/errors/errors.dart' as _i5;
import 'package:web_motors/modules/list_cars/domain/repositories/get_list_car_repository.dart'
    as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [GetListCarRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetListCarRepository extends _i1.Mock
    implements _i3.GetListCarRepository {
  MockGetListCarRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.FailureGetCars, List<_i6.CarEntity>?>> getList(
          int? page) =>
      (super.noSuchMethod(Invocation.method(#getList, [page]),
          returnValue: Future<
                  _i2.Either<_i5.FailureGetCars, List<_i6.CarEntity>?>>.value(
              _FakeEither_0<_i5.FailureGetCars, List<_i6.CarEntity>?>())) as _i4
          .Future<_i2.Either<_i5.FailureGetCars, List<_i6.CarEntity>?>>);
}