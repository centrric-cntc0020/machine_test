// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  Userdata? get userdata => throw _privateConstructorUsedError;
  List<Story>? get stories => throw _privateConstructorUsedError;
  List<dynamic>? get testimonial => throw _privateConstructorUsedError;
  List<Subject>? get subjects => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {Userdata? userdata,
      List<Story>? stories,
      List<dynamic>? testimonial,
      List<Subject>? subjects});

  $UserdataCopyWith<$Res>? get userdata;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userdata = freezed,
    Object? stories = freezed,
    Object? testimonial = freezed,
    Object? subjects = freezed,
  }) {
    return _then(_value.copyWith(
      userdata: freezed == userdata
          ? _value.userdata
          : userdata // ignore: cast_nullable_to_non_nullable
              as Userdata?,
      stories: freezed == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<Story>?,
      testimonial: freezed == testimonial
          ? _value.testimonial
          : testimonial // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      subjects: freezed == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<Subject>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserdataCopyWith<$Res>? get userdata {
    if (_value.userdata == null) {
      return null;
    }

    return $UserdataCopyWith<$Res>(_value.userdata!, (value) {
      return _then(_value.copyWith(userdata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Userdata? userdata,
      List<Story>? stories,
      List<dynamic>? testimonial,
      List<Subject>? subjects});

  @override
  $UserdataCopyWith<$Res>? get userdata;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userdata = freezed,
    Object? stories = freezed,
    Object? testimonial = freezed,
    Object? subjects = freezed,
  }) {
    return _then(_$DataImpl(
      userdata: freezed == userdata
          ? _value.userdata
          : userdata // ignore: cast_nullable_to_non_nullable
              as Userdata?,
      stories: freezed == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<Story>?,
      testimonial: freezed == testimonial
          ? _value._testimonial
          : testimonial // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      subjects: freezed == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<Subject>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl(
      {this.userdata,
      final List<Story>? stories,
      final List<dynamic>? testimonial,
      final List<Subject>? subjects})
      : _stories = stories,
        _testimonial = testimonial,
        _subjects = subjects;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final Userdata? userdata;
  final List<Story>? _stories;
  @override
  List<Story>? get stories {
    final value = _stories;
    if (value == null) return null;
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _testimonial;
  @override
  List<dynamic>? get testimonial {
    final value = _testimonial;
    if (value == null) return null;
    if (_testimonial is EqualUnmodifiableListView) return _testimonial;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Subject>? _subjects;
  @override
  List<Subject>? get subjects {
    final value = _subjects;
    if (value == null) return null;
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(userdata: $userdata, stories: $stories, testimonial: $testimonial, subjects: $subjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.userdata, userdata) ||
                other.userdata == userdata) &&
            const DeepCollectionEquality().equals(other._stories, _stories) &&
            const DeepCollectionEquality()
                .equals(other._testimonial, _testimonial) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userdata,
      const DeepCollectionEquality().hash(_stories),
      const DeepCollectionEquality().hash(_testimonial),
      const DeepCollectionEquality().hash(_subjects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  factory _Data(
      {final Userdata? userdata,
      final List<Story>? stories,
      final List<dynamic>? testimonial,
      final List<Subject>? subjects}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  Userdata? get userdata;
  @override
  List<Story>? get stories;
  @override
  List<dynamic>? get testimonial;
  @override
  List<Subject>? get subjects;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
