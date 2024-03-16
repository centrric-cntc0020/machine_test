import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeModel with _$HomeModel {
  factory HomeModel({
    int? status,
    String? message,
    Data? data,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}
