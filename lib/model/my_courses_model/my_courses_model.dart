import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'my_courses_model.freezed.dart';
part 'my_courses_model.g.dart';

@freezed
class MyCoursesModel with _$MyCoursesModel {
  factory MyCoursesModel({
    int? status,
    String? message,
    Data? data,
  }) = _MyCoursesModel;

  factory MyCoursesModel.fromJson(Map<String, dynamic> json) =>
      _$MyCoursesModelFromJson(json);
}
