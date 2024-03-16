// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdBanner _$AdBannerFromJson(Map<String, dynamic> json) {
  return _AdBanner.fromJson(json);
}

/// @nodoc
mixin _$AdBanner {
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdBannerCopyWith<AdBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdBannerCopyWith<$Res> {
  factory $AdBannerCopyWith(AdBanner value, $Res Function(AdBanner) then) =
      _$AdBannerCopyWithImpl<$Res, AdBanner>;
  @useResult
  $Res call({String? id, String? image, String? link});
}

/// @nodoc
class _$AdBannerCopyWithImpl<$Res, $Val extends AdBanner>
    implements $AdBannerCopyWith<$Res> {
  _$AdBannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdBannerImplCopyWith<$Res>
    implements $AdBannerCopyWith<$Res> {
  factory _$$AdBannerImplCopyWith(
          _$AdBannerImpl value, $Res Function(_$AdBannerImpl) then) =
      __$$AdBannerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? image, String? link});
}

/// @nodoc
class __$$AdBannerImplCopyWithImpl<$Res>
    extends _$AdBannerCopyWithImpl<$Res, _$AdBannerImpl>
    implements _$$AdBannerImplCopyWith<$Res> {
  __$$AdBannerImplCopyWithImpl(
      _$AdBannerImpl _value, $Res Function(_$AdBannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? link = freezed,
  }) {
    return _then(_$AdBannerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdBannerImpl implements _AdBanner {
  _$AdBannerImpl({this.id, this.image, this.link});

  factory _$AdBannerImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdBannerImplFromJson(json);

  @override
  final String? id;
  @override
  final String? image;
  @override
  final String? link;

  @override
  String toString() {
    return 'AdBanner(id: $id, image: $image, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdBannerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdBannerImplCopyWith<_$AdBannerImpl> get copyWith =>
      __$$AdBannerImplCopyWithImpl<_$AdBannerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdBannerImplToJson(
      this,
    );
  }
}

abstract class _AdBanner implements AdBanner {
  factory _AdBanner(
      {final String? id,
      final String? image,
      final String? link}) = _$AdBannerImpl;

  factory _AdBanner.fromJson(Map<String, dynamic> json) =
      _$AdBannerImpl.fromJson;

  @override
  String? get id;
  @override
  String? get image;
  @override
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$AdBannerImplCopyWith<_$AdBannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
