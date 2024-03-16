import 'package:freezed_annotation/freezed_annotation.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class Datum with _$Datum {
  factory Datum({
    @JsonKey(name: 'feed_id') String? feedId,
    String? title,
    String? content,
    String? image,
    @JsonKey(name: 'category_id') String? categoryId,
    @JsonKey(name: 'course_id') dynamic courseId,
    @JsonKey(name: 'file_type') String? fileType,
    @JsonKey(name: 'video_url') String? videoUrl,
    String? thumbnail,
    @JsonKey(name: 'updated_on') String? updatedOn,
    String? category,
    String? file,
    @JsonKey(name: 'video_thumbnail') String? videoThumbnail,
    @JsonKey(name: 'is_bookmarked') int? isBookmarked,
    @JsonKey(name: 'is_liked') int? isLiked,
    String? date,
    @JsonKey(name: 'like_count') int? likeCount,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
