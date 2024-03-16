// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      feedId: json['feed_id'] as String?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      image: json['image'] as String?,
      categoryId: json['category_id'] as String?,
      courseId: json['course_id'],
      fileType: json['file_type'] as String?,
      videoUrl: json['video_url'] as String?,
      thumbnail: json['thumbnail'] as String?,
      updatedOn: json['updated_on'] as String?,
      category: json['category'] as String?,
      file: json['file'] as String?,
      videoThumbnail: json['video_thumbnail'] as String?,
      isBookmarked: json['is_bookmarked'] as int?,
      isLiked: json['is_liked'] as int?,
      date: json['date'] as String?,
      likeCount: json['like_count'] as int?,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'feed_id': instance.feedId,
      'title': instance.title,
      'content': instance.content,
      'image': instance.image,
      'category_id': instance.categoryId,
      'course_id': instance.courseId,
      'file_type': instance.fileType,
      'video_url': instance.videoUrl,
      'thumbnail': instance.thumbnail,
      'updated_on': instance.updatedOn,
      'category': instance.category,
      'file': instance.file,
      'video_thumbnail': instance.videoThumbnail,
      'is_bookmarked': instance.isBookmarked,
      'is_liked': instance.isLiked,
      'date': instance.date,
      'like_count': instance.likeCount,
    };
