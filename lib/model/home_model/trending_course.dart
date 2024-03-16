import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_course.freezed.dart';
part 'trending_course.g.dart';

@freezed
class TrendingCourse with _$TrendingCourse {
  factory TrendingCourse({
    String? id,
    String? title,
    String? description,
    @JsonKey(name: 'short_description') String? shortDescription,
    String? thumbnail,
    String? price,
    @JsonKey(name: 'is_free_course') dynamic isFreeCourse,
    int? rating,
    @JsonKey(name: 'number_of_ratings') int? numberOfRatings,
    @JsonKey(name: 'total_enrollment') String? totalEnrollment,
    String? duration,
    @JsonKey(name: 'total_lessons') int? totalLessons,
    @JsonKey(name: 'shareable_link') String? shareableLink,
  }) = _TrendingCourse;

  factory TrendingCourse.fromJson(Map<String, dynamic> json) =>
      _$TrendingCourseFromJson(json);
}
