// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      userdata: json['userdata'] == null
          ? null
          : Userdata.fromJson(json['userdata'] as Map<String, dynamic>),
      testimonial: json['testimonial'] as List<dynamic>?,
      adBanner: (json['ad_banner'] as List<dynamic>?)
          ?.map((e) => AdBanner.fromJson(e as Map<String, dynamic>))
          .toList(),
      topCourses: (json['top_courses'] as List<dynamic>?)
          ?.map((e) => TopCourse.fromJson(e as Map<String, dynamic>))
          .toList(),
      trendingCourses: (json['trending_courses'] as List<dynamic>?)
          ?.map((e) => TrendingCourse.fromJson(e as Map<String, dynamic>))
          .toList(),
      demoVideos: json['demo_videos'] as List<dynamic>?,
      demoQuizzes: json['demo_quizzes'] as List<dynamic>?,
      currentAffairsImageUrl: json['current_affairs_image_url'] as String?,
      showScholarshipRegistration:
          json['show_scholarship_registration'] as String?,
      imageScholarshipRegistration:
          json['image_scholarship_registration'] as String?,
      urlScholarshipRegistration:
          json['url_scholarship_registration'] as String?,
      showScholarshipExam: json['show_scholarship_exam'] as String?,
      imageScholarshipExam: json['image_scholarship_exam'] as String?,
      urlScholarshipExam: json['url_scholarship_exam'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'userdata': instance.userdata,
      'testimonial': instance.testimonial,
      'ad_banner': instance.adBanner,
      'top_courses': instance.topCourses,
      'trending_courses': instance.trendingCourses,
      'demo_videos': instance.demoVideos,
      'demo_quizzes': instance.demoQuizzes,
      'current_affairs_image_url': instance.currentAffairsImageUrl,
      'show_scholarship_registration': instance.showScholarshipRegistration,
      'image_scholarship_registration': instance.imageScholarshipRegistration,
      'url_scholarship_registration': instance.urlScholarshipRegistration,
      'show_scholarship_exam': instance.showScholarshipExam,
      'image_scholarship_exam': instance.imageScholarshipExam,
      'url_scholarship_exam': instance.urlScholarshipExam,
    };
