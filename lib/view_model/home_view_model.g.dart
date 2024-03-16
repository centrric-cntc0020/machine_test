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

  late final _$tvShowAllErrResAtom =
      Atom(name: 'HomeViewModelBase.tvShowAllErrRes', context: context);

  @override
  Map<MainFailure, dynamic>? get tvShowAllErrRes {
    _$tvShowAllErrResAtom.reportRead();
    return super.tvShowAllErrRes;
  }

  @override
  set tvShowAllErrRes(Map<MainFailure, dynamic>? value) {
    _$tvShowAllErrResAtom.reportWrite(value, super.tvShowAllErrRes, () {
      super.tvShowAllErrRes = value;
    });
  }

  late final _$tvShowAllSuccResAtom =
      Atom(name: 'HomeViewModelBase.tvShowAllSuccRes', context: context);

  @override
  ApiResponse<List<ShowModel>> get tvShowAllSuccRes {
    _$tvShowAllSuccResAtom.reportRead();
    return super.tvShowAllSuccRes;
  }

  @override
  set tvShowAllSuccRes(ApiResponse<List<ShowModel>> value) {
    _$tvShowAllSuccResAtom.reportWrite(value, super.tvShowAllSuccRes, () {
      super.tvShowAllSuccRes = value;
    });
  }

  late final _$castErrResAtom =
      Atom(name: 'HomeViewModelBase.castErrRes', context: context);

  @override
  Map<MainFailure, dynamic>? get castErrRes {
    _$castErrResAtom.reportRead();
    return super.castErrRes;
  }

  @override
  set castErrRes(Map<MainFailure, dynamic>? value) {
    _$castErrResAtom.reportWrite(value, super.castErrRes, () {
      super.castErrRes = value;
    });
  }

  late final _$castSuccResAtom =
      Atom(name: 'HomeViewModelBase.castSuccRes', context: context);

  @override
  ApiResponse<List<PersonModel>> get castSuccRes {
    _$castSuccResAtom.reportRead();
    return super.castSuccRes;
  }

  @override
  set castSuccRes(ApiResponse<List<PersonModel>> value) {
    _$castSuccResAtom.reportWrite(value, super.castSuccRes, () {
      super.castSuccRes = value;
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

  late final _$tvShowAllApiAsyncAction =
      AsyncAction('HomeViewModelBase.tvShowAllApi', context: context);

  @override
  Future<void> tvShowAllApi() {
    return _$tvShowAllApiAsyncAction.run(() => super.tvShowAllApi());
  }

  late final _$castAllApiAsyncAction =
      AsyncAction('HomeViewModelBase.castAllApi', context: context);

  @override
  Future<void> castAllApi(int id) {
    return _$castAllApiAsyncAction.run(() => super.castAllApi(id));
  }

  late final _$homeApiAsyncAction =
      AsyncAction('HomeViewModelBase.homeApi', context: context);

  @override
  Future<void> homeApi() {
    return _$homeApiAsyncAction.run(() => super.homeApi());
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
tvShowAllErrRes: ${tvShowAllErrRes},
tvShowAllSuccRes: ${tvShowAllSuccRes},
castErrRes: ${castErrRes},
castSuccRes: ${castSuccRes},
homeErrRes: ${homeErrRes},
homeSuccRes: ${homeSuccRes}
    ''';
  }
}
