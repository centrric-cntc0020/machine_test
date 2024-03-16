// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      userdata: json['userdata'] == null
          ? null
          : Userdata.fromJson(json['userdata'] as Map<String, dynamic>),
      stories: (json['stories'] as List<dynamic>?)
          ?.map((e) => Story.fromJson(e as Map<String, dynamic>))
          .toList(),
      testimonial: json['testimonial'] as List<dynamic>?,
      subjects: (json['subjects'] as List<dynamic>?)
          ?.map((e) => Subject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'userdata': instance.userdata,
      'stories': instance.stories,
      'testimonial': instance.testimonial,
      'subjects': instance.subjects,
    };
