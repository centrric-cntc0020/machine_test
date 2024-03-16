import 'package:freezed_annotation/freezed_annotation.dart';

import 'datum.dart';

part 'feed_model.freezed.dart';
part 'feed_model.g.dart';

@freezed
class FeedModel with _$FeedModel {
  factory FeedModel({
    int? status,
    String? message,
    List<Datum>? data,
  }) = _FeedModel;

  factory FeedModel.fromJson(Map<String, dynamic> json) =>
      _$FeedModelFromJson(json);
}
