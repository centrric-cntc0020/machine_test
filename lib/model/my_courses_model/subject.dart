import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject.freezed.dart';
part 'subject.g.dart';

@freezed
class Subject with _$Subject {
  factory Subject({
    String? id,
    String? title,
    @JsonKey(name: 'course_id') String? courseId,
    String? order,
    String? thumbnail,
    String? background,
    String? icon,
    String? free,
    @JsonKey(name: 'instructor_id') dynamic instructorId,
  }) = _Subject;

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);
}
