import 'package:freezed_annotation/freezed_annotation.dart';

import 'image.dart';
import 'links.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  factory Character({
    int? id,
    String? url,
    String? name,
    Image? image,
    @JsonKey(name: '_links') Links? links,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}
