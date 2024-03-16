// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: 'feed_id')
  String? get feedId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_id')
  dynamic get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_type')
  String? get fileType => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_url')
  String? get videoUrl => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_on')
  String? get updatedOn => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get file => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_thumbnail')
  String? get videoThumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_bookmarked')
  int? get isBookmarked => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_liked')
  int? get isLiked => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'like_count')
  int? get likeCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {@JsonKey(name: 'feed_id') String? feedId,
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
      @JsonKey(name: 'like_count') int? likeCount});
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedId = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? image = freezed,
    Object? categoryId = freezed,
    Object? courseId = freezed,
    Object? fileType = freezed,
    Object? videoUrl = freezed,
    Object? thumbnail = freezed,
    Object? updatedOn = freezed,
    Object? category = freezed,
    Object? file = freezed,
    Object? videoThumbnail = freezed,
    Object? isBookmarked = freezed,
    Object? isLiked = freezed,
    Object? date = freezed,
    Object? likeCount = freezed,
  }) {
    return _then(_value.copyWith(
      feedId: freezed == feedId
          ? _value.feedId
          : feedId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      videoThumbnail: freezed == videoThumbnail
          ? _value.videoThumbnail
          : videoThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      isBookmarked: freezed == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as int?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'feed_id') String? feedId,
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
      @JsonKey(name: 'like_count') int? likeCount});
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedId = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? image = freezed,
    Object? categoryId = freezed,
    Object? courseId = freezed,
    Object? fileType = freezed,
    Object? videoUrl = freezed,
    Object? thumbnail = freezed,
    Object? updatedOn = freezed,
    Object? category = freezed,
    Object? file = freezed,
    Object? videoThumbnail = freezed,
    Object? isBookmarked = freezed,
    Object? isLiked = freezed,
    Object? date = freezed,
    Object? likeCount = freezed,
  }) {
    return _then(_$DatumImpl(
      feedId: freezed == feedId
          ? _value.feedId
          : feedId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      videoThumbnail: freezed == videoThumbnail
          ? _value.videoThumbnail
          : videoThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      isBookmarked: freezed == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as int?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  _$DatumImpl(
      {@JsonKey(name: 'feed_id') this.feedId,
      this.title,
      this.content,
      this.image,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'course_id') this.courseId,
      @JsonKey(name: 'file_type') this.fileType,
      @JsonKey(name: 'video_url') this.videoUrl,
      this.thumbnail,
      @JsonKey(name: 'updated_on') this.updatedOn,
      this.category,
      this.file,
      @JsonKey(name: 'video_thumbnail') this.videoThumbnail,
      @JsonKey(name: 'is_bookmarked') this.isBookmarked,
      @JsonKey(name: 'is_liked') this.isLiked,
      this.date,
      @JsonKey(name: 'like_count') this.likeCount});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey(name: 'feed_id')
  final String? feedId;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? image;
  @override
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @override
  @JsonKey(name: 'course_id')
  final dynamic courseId;
  @override
  @JsonKey(name: 'file_type')
  final String? fileType;
  @override
  @JsonKey(name: 'video_url')
  final String? videoUrl;
  @override
  final String? thumbnail;
  @override
  @JsonKey(name: 'updated_on')
  final String? updatedOn;
  @override
  final String? category;
  @override
  final String? file;
  @override
  @JsonKey(name: 'video_thumbnail')
  final String? videoThumbnail;
  @override
  @JsonKey(name: 'is_bookmarked')
  final int? isBookmarked;
  @override
  @JsonKey(name: 'is_liked')
  final int? isLiked;
  @override
  final String? date;
  @override
  @JsonKey(name: 'like_count')
  final int? likeCount;

  @override
  String toString() {
    return 'Datum(feedId: $feedId, title: $title, content: $content, image: $image, categoryId: $categoryId, courseId: $courseId, fileType: $fileType, videoUrl: $videoUrl, thumbnail: $thumbnail, updatedOn: $updatedOn, category: $category, file: $file, videoThumbnail: $videoThumbnail, isBookmarked: $isBookmarked, isLiked: $isLiked, date: $date, likeCount: $likeCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.feedId, feedId) || other.feedId == feedId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality().equals(other.courseId, courseId) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.updatedOn, updatedOn) ||
                other.updatedOn == updatedOn) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.videoThumbnail, videoThumbnail) ||
                other.videoThumbnail == videoThumbnail) &&
            (identical(other.isBookmarked, isBookmarked) ||
                other.isBookmarked == isBookmarked) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      feedId,
      title,
      content,
      image,
      categoryId,
      const DeepCollectionEquality().hash(courseId),
      fileType,
      videoUrl,
      thumbnail,
      updatedOn,
      category,
      file,
      videoThumbnail,
      isBookmarked,
      isLiked,
      date,
      likeCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  factory _Datum(
      {@JsonKey(name: 'feed_id') final String? feedId,
      final String? title,
      final String? content,
      final String? image,
      @JsonKey(name: 'category_id') final String? categoryId,
      @JsonKey(name: 'course_id') final dynamic courseId,
      @JsonKey(name: 'file_type') final String? fileType,
      @JsonKey(name: 'video_url') final String? videoUrl,
      final String? thumbnail,
      @JsonKey(name: 'updated_on') final String? updatedOn,
      final String? category,
      final String? file,
      @JsonKey(name: 'video_thumbnail') final String? videoThumbnail,
      @JsonKey(name: 'is_bookmarked') final int? isBookmarked,
      @JsonKey(name: 'is_liked') final int? isLiked,
      final String? date,
      @JsonKey(name: 'like_count') final int? likeCount}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: 'feed_id')
  String? get feedId;
  @override
  String? get title;
  @override
  String? get content;
  @override
  String? get image;
  @override
  @JsonKey(name: 'category_id')
  String? get categoryId;
  @override
  @JsonKey(name: 'course_id')
  dynamic get courseId;
  @override
  @JsonKey(name: 'file_type')
  String? get fileType;
  @override
  @JsonKey(name: 'video_url')
  String? get videoUrl;
  @override
  String? get thumbnail;
  @override
  @JsonKey(name: 'updated_on')
  String? get updatedOn;
  @override
  String? get category;
  @override
  String? get file;
  @override
  @JsonKey(name: 'video_thumbnail')
  String? get videoThumbnail;
  @override
  @JsonKey(name: 'is_bookmarked')
  int? get isBookmarked;
  @override
  @JsonKey(name: 'is_liked')
  int? get isLiked;
  @override
  String? get date;
  @override
  @JsonKey(name: 'like_count')
  int? get likeCount;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
