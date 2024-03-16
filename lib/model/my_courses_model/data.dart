import 'package:freezed_annotation/freezed_annotation.dart';

import 'story.dart';
import 'subject.dart';
import 'userdata.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    Userdata? userdata,
    List<Story>? stories,
    List<dynamic>? testimonial,
    List<Subject>? subjects,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
