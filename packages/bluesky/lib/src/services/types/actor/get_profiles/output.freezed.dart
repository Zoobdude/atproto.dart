// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Output _$OutputFromJson(Map<String, dynamic> json) {
  return _Output.fromJson(json);
}

/// @nodoc
mixin _$Output {
  List<ProfileViewDetailed> get profiles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutputCopyWith<Output> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutputCopyWith<$Res> {
  factory $OutputCopyWith(Output value, $Res Function(Output) then) =
      _$OutputCopyWithImpl<$Res, Output>;
  @useResult
  $Res call({List<ProfileViewDetailed> profiles});
}

/// @nodoc
class _$OutputCopyWithImpl<$Res, $Val extends Output>
    implements $OutputCopyWith<$Res> {
  _$OutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profiles = null,
  }) {
    return _then(_value.copyWith(
      profiles: null == profiles
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<ProfileViewDetailed>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OutputImplCopyWith<$Res> implements $OutputCopyWith<$Res> {
  factory _$$OutputImplCopyWith(
          _$OutputImpl value, $Res Function(_$OutputImpl) then) =
      __$$OutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProfileViewDetailed> profiles});
}

/// @nodoc
class __$$OutputImplCopyWithImpl<$Res>
    extends _$OutputCopyWithImpl<$Res, _$OutputImpl>
    implements _$$OutputImplCopyWith<$Res> {
  __$$OutputImplCopyWithImpl(
      _$OutputImpl _value, $Res Function(_$OutputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profiles = null,
  }) {
    return _then(_$OutputImpl(
      profiles: null == profiles
          ? _value._profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<ProfileViewDetailed>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutputImpl implements _Output {
  const _$OutputImpl({required final List<ProfileViewDetailed> profiles})
      : _profiles = profiles;

  factory _$OutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutputImplFromJson(json);

  final List<ProfileViewDetailed> _profiles;
  @override
  List<ProfileViewDetailed> get profiles {
    if (_profiles is EqualUnmodifiableListView) return _profiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profiles);
  }

  @override
  String toString() {
    return 'Output(profiles: $profiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutputImpl &&
            const DeepCollectionEquality().equals(other._profiles, _profiles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_profiles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutputImplCopyWith<_$OutputImpl> get copyWith =>
      __$$OutputImplCopyWithImpl<_$OutputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutputImplToJson(
      this,
    );
  }
}

abstract class _Output implements Output {
  const factory _Output({required final List<ProfileViewDetailed> profiles}) =
      _$OutputImpl;

  factory _Output.fromJson(Map<String, dynamic> json) = _$OutputImpl.fromJson;

  @override
  List<ProfileViewDetailed> get profiles;
  @override
  @JsonKey(ignore: true)
  _$$OutputImplCopyWith<_$OutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
