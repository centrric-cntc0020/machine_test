import 'package:freezed_annotation/freezed_annotation.dart';

import 'ad_banner.dart';
import 'top_course.dart';
import 'trending_course.dart';
import 'userdata.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    Userdata? userdata,
    List<dynamic>? testimonial,
    @JsonKey(name: 'ad_banner') List<AdBanner>? adBanner,
    @JsonKey(name: 'top_courses') List<TopCourse>? topCourses,
    @JsonKey(name: 'trending_courses') List<TrendingCourse>? trendingCourses,
    @JsonKey(name: 'demo_videos') List<dynamic>? demoVideos,
    @JsonKey(name: 'demo_quizzes') List<dynamic>? demoQuizzes,
    @JsonKey(name: 'current_affairs_image_url') String? currentAffairsImageUrl,
    @JsonKey(name: 'show_scholarship_registration')
    String? showScholarshipRegistration,
    @JsonKey(name: 'image_scholarship_registration')
    String? imageScholarshipRegistration,
    @JsonKey(name: 'url_scholarship_registration')
    String? urlScholarshipRegistration,
    @JsonKey(name: 'show_scholarship_exam') String? showScholarshipExam,
    @JsonKey(name: 'image_scholarship_exam') String? imageScholarshipExam,
    @JsonKey(name: 'url_scholarship_exam') String? urlScholarshipExam,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
