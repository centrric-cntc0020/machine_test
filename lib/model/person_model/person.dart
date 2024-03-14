import 'package:freezed_annotation/freezed_annotation.dart';

import 'country.dart';
import 'image.dart';
import 'links.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
class Person with _$Person {
  factory Person({
    int? id,
    String? url,
    String? name,
    Country? country,
    String? birthday,
    dynamic deathday,
    String? gender,
    Image? image,
    int? updated,
    @JsonKey(name: '_links') Links? links,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
