// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on HomeViewModelBase, Store {
  late final _$caroselItemIndexAtom =
      Atom(name: 'HomeViewModelBase.caroselItemIndex', context: context);

  @override
  int get caroselItemIndex {
    _$caroselItemIndexAtom.reportRead();
    return super.caroselItemIndex;
  }

  @override
  set caroselItemIndex(int value) {
    _$caroselItemIndexAtom.reportWrite(value, super.caroselItemIndex, () {
      super.caroselItemIndex = value;
    });
  }

  late final _$homeErrResAtom =
      Atom(name: 'HomeViewModelBase.homeErrRes', context: context);

  @override
  Map<MainFailure, dynamic>? get homeErrRes {
    _$homeErrResAtom.reportRead();
    return super.homeErrRes;
  }

  @override
  set homeErrRes(Map<MainFailure, dynamic>? value) {
    _$homeErrResAtom.reportWrite(value, super.homeErrRes, () {
      super.homeErrRes = value;
    });
  }

  late final _$homeSuccResAtom =
      Atom(name: 'HomeViewModelBase.homeSuccRes', context: context);

  @override
  ApiResponse<HomeModel> get homeSuccRes {
    _$homeSuccResAtom.reportRead();
    return super.homeSuccRes;
  }

  @override
  set homeSuccRes(ApiResponse<HomeModel> value) {
    _$homeSuccResAtom.reportWrite(value, super.homeSuccRes, () {
      super.homeSuccRes = value;
    });
  }

  late final _$coursesErrResAtom =
      Atom(name: 'HomeViewModelBase.coursesErrRes', context: context);

  @override
  Map<MainFailure, dynamic>? get coursesErrRes {
    _$coursesErrResAtom.reportRead();
    return super.coursesErrRes;
  }

  @override
  set coursesErrRes(Map<MainFailure, dynamic>? value) {
    _$coursesErrResAtom.reportWrite(value, super.coursesErrRes, () {
      super.coursesErrRes = value;
    });
  }

  late final _$coursesSuccResAtom =
      Atom(name: 'HomeViewModelBase.coursesSuccRes', context: context);

  @override
  ApiResponse<MyCoursesModel> get coursesSuccRes {
    _$coursesSuccResAtom.reportRead();
    return super.coursesSuccRes;
  }

  @override
  set coursesSuccRes(ApiResponse<MyCoursesModel> value) {
    _$coursesSuccResAtom.reportWrite(value, super.coursesSuccRes, () {
      super.coursesSuccRes = value;
    });
  }

  late final _$homeApiAsyncAction =
      AsyncAction('HomeViewModelBase.homeApi', context: context);

  @override
  Future<void> homeApi() {
    return _$homeApiAsyncAction.run(() => super.homeApi());
  }

  late final _$coursesApiAsyncAction =
      AsyncAction('HomeViewModelBase.coursesApi', context: context);

  @override
  Future<void> coursesApi() {
    return _$coursesApiAsyncAction.run(() => super.coursesApi());
  }

  late final _$HomeViewModelBaseActionController =
      ActionController(name: 'HomeViewModelBase', context: context);

  @override
  dynamic caroselDotsUpdateFun(int index) {
    final _$actionInfo = _$HomeViewModelBaseActionController.startAction(
        name: 'HomeViewModelBase.caroselDotsUpdateFun');
    try {
      return super.caroselDotsUpdateFun(index);
    } finally {
      _$HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
caroselItemIndex: ${caroselItemIndex},
homeErrRes: ${homeErrRes},
homeSuccRes: ${homeSuccRes},
coursesErrRes: ${coursesErrRes},
coursesSuccRes: ${coursesSuccRes}
    ''';
  }
}
