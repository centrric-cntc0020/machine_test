// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectImpl _$$SubjectImplFromJson(Map<String, dynamic> json) =>
    _$SubjectImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      courseId: json['course_id'] as String?,
      order: json['order'] as String?,
      thumbnail: json['thumbnail'] as String?,
      background: json['background'] as String?,
      icon: json['icon'] as String?,
      free: json['free'] as String?,
      instructorId: json['instructor_id'],
    );

Map<String, dynamic> _$$SubjectImplToJson(_$SubjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'course_id': instance.courseId,
      'order': instance.order,
      'thumbnail': instance.thumbnail,
      'background': instance.background,
      'icon': instance.icon,
      'free': instance.free,
      'instructor_id': instance.instructorId,
    };
