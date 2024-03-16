// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopCourseImpl _$$TopCourseImplFromJson(Map<String, dynamic> json) =>
    _$TopCourseImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      shortDescription: json['short_description'] as String?,
      thumbnail: json['thumbnail'] as String?,
      price: json['price'] as String?,
      isFreeCourse: json['is_free_course'],
      rating: json['rating'] as int?,
      numberOfRatings: json['number_of_ratings'] as int?,
      totalEnrollment: json['total_enrollment'] as String?,
      duration: json['duration'] as String?,
      totalLessons: json['total_lessons'] as int?,
      shareableLink: json['shareable_link'] as String?,
    );

Map<String, dynamic> _$$TopCourseImplToJson(_$TopCourseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'short_description': instance.shortDescription,
      'thumbnail': instance.thumbnail,
      'price': instance.price,
      'is_free_course': instance.isFreeCourse,
      'rating': instance.rating,
      'number_of_ratings': instance.numberOfRatings,
      'total_enrollment': instance.totalEnrollment,
      'duration': instance.duration,
      'total_lessons': instance.totalLessons,
      'shareable_link': instance.shareableLink,
    };
