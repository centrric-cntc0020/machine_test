import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_course.freezed.dart';
part 'top_course.g.dart';

@freezed
class TopCourse with _$TopCourse {
  factory TopCourse({
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
  }) = _TopCourse;

  factory TopCourse.fromJson(Map<String, dynamic> json) =>
      _$TopCourseFromJson(json);
}
