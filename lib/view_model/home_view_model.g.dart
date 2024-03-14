// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on HomeViewModelBase, Store {
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

  late final _$tvShowAllApiAsyncAction =
      AsyncAction('HomeViewModelBase.tvShowAllApi', context: context);

  @override
  Future<void> tvShowAllApi() {
    return _$tvShowAllApiAsyncAction.run(() => super.tvShowAllApi());
  }

  @override
  String toString() {
    return '''
tvShowAllErrRes: ${tvShowAllErrRes},
tvShowAllSuccRes: ${tvShowAllSuccRes}
    ''';
  }
}
