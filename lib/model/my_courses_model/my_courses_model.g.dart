// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_courses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyCoursesModelImpl _$$MyCoursesModelImplFromJson(Map<String, dynamic> json) =>
    _$MyCoursesModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MyCoursesModelImplToJson(
        _$MyCoursesModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
