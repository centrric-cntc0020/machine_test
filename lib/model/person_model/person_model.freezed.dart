// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PersonModel _$PersonModelFromJson(Map<String, dynamic> json) {
  return _PersonModel.fromJson(json);
}

/// @nodoc
mixin _$PersonModel {
  Person? get person => throw _privateConstructorUsedError;
  Character? get character => throw _privateConstructorUsedError;
  bool? get self => throw _privateConstructorUsedError;
  bool? get voice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonModelCopyWith<PersonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonModelCopyWith<$Res> {
  factory $PersonModelCopyWith(
          PersonModel value, $Res Function(PersonModel) then) =
      _$PersonModelCopyWithImpl<$Res, PersonModel>;
  @useResult
  $Res call({Person? person, Character? character, bool? self, bool? voice});

  $PersonCopyWith<$Res>? get person;
  $CharacterCopyWith<$Res>? get character;
}

/// @nodoc
class _$PersonModelCopyWithImpl<$Res, $Val extends PersonModel>
    implements $PersonModelCopyWith<$Res> {
  _$PersonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? person = freezed,
    Object? character = freezed,
    Object? self = freezed,
    Object? voice = freezed,
  }) {
    return _then(_value.copyWith(
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person?,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character?,
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as bool?,
      voice: freezed == voice
          ? _value.voice
          : voice // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonCopyWith<$Res>? get person {
    if (_value.person == null) {
      return null;
    }

    return $PersonCopyWith<$Res>(_value.person!, (value) {
      return _then(_value.copyWith(person: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res>? get character {
    if (_value.character == null) {
      return null;
    }

    return $CharacterCopyWith<$Res>(_value.character!, (value) {
      return _then(_value.copyWith(character: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PersonModelImplCopyWith<$Res>
    implements $PersonModelCopyWith<$Res> {
  factory _$$PersonModelImplCopyWith(
          _$PersonModelImpl value, $Res Function(_$PersonModelImpl) then) =
      __$$PersonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Person? person, Character? character, bool? self, bool? voice});

  @override
  $PersonCopyWith<$Res>? get person;
  @override
  $CharacterCopyWith<$Res>? get character;
}

/// @nodoc
class __$$PersonModelImplCopyWithImpl<$Res>
    extends _$PersonModelCopyWithImpl<$Res, _$PersonModelImpl>
    implements _$$PersonModelImplCopyWith<$Res> {
  __$$PersonModelImplCopyWithImpl(
      _$PersonModelImpl _value, $Res Function(_$PersonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? person = freezed,
    Object? character = freezed,
    Object? self = freezed,
    Object? voice = freezed,
  }) {
    return _then(_$PersonModelImpl(
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person?,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character?,
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as bool?,
      voice: freezed == voice
          ? _value.voice
          : voice // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonModelImpl implements _PersonModel {
  _$PersonModelImpl({this.person, this.character, this.self, this.voice});

  factory _$PersonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonModelImplFromJson(json);

  @override
  final Person? person;
  @override
  final Character? character;
  @override
  final bool? self;
  @override
  final bool? voice;

  @override
  String toString() {
    return 'PersonModel(person: $person, character: $character, self: $self, voice: $voice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonModelImpl &&
            (identical(other.person, person) || other.person == person) &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.self, self) || other.self == self) &&
            (identical(other.voice, voice) || other.voice == voice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, person, character, self, voice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonModelImplCopyWith<_$PersonModelImpl> get copyWith =>
      __$$PersonModelImplCopyWithImpl<_$PersonModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonModelImplToJson(
      this,
    );
  }
}

abstract class _PersonModel implements PersonModel {
  factory _PersonModel(
      {final Person? person,
      final Character? character,
      final bool? self,
      final bool? voice}) = _$PersonModelImpl;

  factory _PersonModel.fromJson(Map<String, dynamic> json) =
      _$PersonModelImpl.fromJson;

  @override
  Person? get person;
  @override
  Character? get character;
  @override
  bool? get self;
  @override
  bool? get voice;
  @override
  @JsonKey(ignore: true)
  _$$PersonModelImplCopyWith<_$PersonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
