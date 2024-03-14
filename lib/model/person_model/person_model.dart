import 'package:freezed_annotation/freezed_annotation.dart';

import 'character.dart';
import 'person.dart';

part 'person_model.freezed.dart';
part 'person_model.g.dart';

@freezed
class PersonModel with _$PersonModel {
  factory PersonModel({
    Person? person,
    Character? character,
    bool? self,
    bool? voice,
  }) = _PersonModel;

  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);
}
