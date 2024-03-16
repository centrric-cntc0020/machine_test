// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_courses_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyCoursesModel _$MyCoursesModelFromJson(Map<String, dynamic> json) {
  return _MyCoursesModel.fromJson(json);
}

/// @nodoc
mixin _$MyCoursesModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyCoursesModelCopyWith<MyCoursesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyCoursesModelCopyWith<$Res> {
  factory $MyCoursesModelCopyWith(
          MyCoursesModel value, $Res Function(MyCoursesModel) then) =
      _$MyCoursesModelCopyWithImpl<$Res, MyCoursesModel>;
  @useResult
  $Res call({int? status, String? message, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$MyCoursesModelCopyWithImpl<$Res, $Val extends MyCoursesModel>
    implements $MyCoursesModelCopyWith<$Res> {
  _$MyCoursesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyCoursesModelImplCopyWith<$Res>
    implements $MyCoursesModelCopyWith<$Res> {
  factory _$$MyCoursesModelImplCopyWith(_$MyCoursesModelImpl value,
          $Res Function(_$MyCoursesModelImpl) then) =
      __$$MyCoursesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$MyCoursesModelImplCopyWithImpl<$Res>
    extends _$MyCoursesModelCopyWithImpl<$Res, _$MyCoursesModelImpl>
    implements _$$MyCoursesModelImplCopyWith<$Res> {
  __$$MyCoursesModelImplCopyWithImpl(
      _$MyCoursesModelImpl _value, $Res Function(_$MyCoursesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MyCoursesModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyCoursesModelImpl implements _MyCoursesModel {
  _$MyCoursesModelImpl({this.status, this.message, this.data});

  factory _$MyCoursesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyCoursesModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final Data? data;

  @override
  String toString() {
    return 'MyCoursesModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyCoursesModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyCoursesModelImplCopyWith<_$MyCoursesModelImpl> get copyWith =>
      __$$MyCoursesModelImplCopyWithImpl<_$MyCoursesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyCoursesModelImplToJson(
      this,
    );
  }
}

abstract class _MyCoursesModel implements MyCoursesModel {
  factory _MyCoursesModel(
      {final int? status,
      final String? message,
      final Data? data}) = _$MyCoursesModelImpl;

  factory _MyCoursesModel.fromJson(Map<String, dynamic> json) =
      _$MyCoursesModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$MyCoursesModelImplCopyWith<_$MyCoursesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
