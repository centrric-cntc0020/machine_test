import 'package:freezed_annotation/freezed_annotation.dart';

import 'self.dart';

part 'links.freezed.dart';
part 'links.g.dart';

@freezed
class Links with _$Links {
  factory Links({
    Self? self,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}
