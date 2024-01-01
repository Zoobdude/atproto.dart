// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_create_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerCreateAccount _$ServerCreateAccountFromJson(Map<String, dynamic> json) {
  return _ServerCreateAccount.fromJson(json);
}

/// @nodoc
mixin _$ServerCreateAccount {
  String get accessJwt => throw _privateConstructorUsedError;
  String get refreshJwt => throw _privateConstructorUsedError;
  String get handle => throw _privateConstructorUsedError;
  String get did => throw _privateConstructorUsedError;
  Map<String, dynamic>? get didDoc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerCreateAccountCopyWith<ServerCreateAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerCreateAccountCopyWith<$Res> {
  factory $ServerCreateAccountCopyWith(
          ServerCreateAccount value, $Res Function(ServerCreateAccount) then) =
      _$ServerCreateAccountCopyWithImpl<$Res, ServerCreateAccount>;
  @useResult
  $Res call(
      {String accessJwt,
      String refreshJwt,
      String handle,
      String did,
      Map<String, dynamic>? didDoc});
}

/// @nodoc
class _$ServerCreateAccountCopyWithImpl<$Res, $Val extends ServerCreateAccount>
    implements $ServerCreateAccountCopyWith<$Res> {
  _$ServerCreateAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessJwt = null,
    Object? refreshJwt = null,
    Object? handle = null,
    Object? did = null,
    Object? didDoc = freezed,
  }) {
    return _then(_value.copyWith(
      accessJwt: null == accessJwt
          ? _value.accessJwt
          : accessJwt // ignore: cast_nullable_to_non_nullable
              as String,
      refreshJwt: null == refreshJwt
          ? _value.refreshJwt
          : refreshJwt // ignore: cast_nullable_to_non_nullable
              as String,
      handle: null == handle
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String,
      did: null == did
          ? _value.did
          : did // ignore: cast_nullable_to_non_nullable
              as String,
      didDoc: freezed == didDoc
          ? _value.didDoc
          : didDoc // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerCreateAccountImplCopyWith<$Res>
    implements $ServerCreateAccountCopyWith<$Res> {
  factory _$$ServerCreateAccountImplCopyWith(_$ServerCreateAccountImpl value,
          $Res Function(_$ServerCreateAccountImpl) then) =
      __$$ServerCreateAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accessJwt,
      String refreshJwt,
      String handle,
      String did,
      Map<String, dynamic>? didDoc});
}

/// @nodoc
class __$$ServerCreateAccountImplCopyWithImpl<$Res>
    extends _$ServerCreateAccountCopyWithImpl<$Res, _$ServerCreateAccountImpl>
    implements _$$ServerCreateAccountImplCopyWith<$Res> {
  __$$ServerCreateAccountImplCopyWithImpl(_$ServerCreateAccountImpl _value,
      $Res Function(_$ServerCreateAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessJwt = null,
    Object? refreshJwt = null,
    Object? handle = null,
    Object? did = null,
    Object? didDoc = freezed,
  }) {
    return _then(_$ServerCreateAccountImpl(
      accessJwt: null == accessJwt
          ? _value.accessJwt
          : accessJwt // ignore: cast_nullable_to_non_nullable
              as String,
      refreshJwt: null == refreshJwt
          ? _value.refreshJwt
          : refreshJwt // ignore: cast_nullable_to_non_nullable
              as String,
      handle: null == handle
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String,
      did: null == did
          ? _value.did
          : did // ignore: cast_nullable_to_non_nullable
              as String,
      didDoc: freezed == didDoc
          ? _value._didDoc
          : didDoc // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerCreateAccountImpl implements _ServerCreateAccount {
  const _$ServerCreateAccountImpl(
      {required this.accessJwt,
      required this.refreshJwt,
      required this.handle,
      required this.did,
      final Map<String, dynamic>? didDoc})
      : _didDoc = didDoc;

  factory _$ServerCreateAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerCreateAccountImplFromJson(json);

  @override
  final String accessJwt;
  @override
  final String refreshJwt;
  @override
  final String handle;
  @override
  final String did;
  final Map<String, dynamic>? _didDoc;
  @override
  Map<String, dynamic>? get didDoc {
    final value = _didDoc;
    if (value == null) return null;
    if (_didDoc is EqualUnmodifiableMapView) return _didDoc;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ServerCreateAccount(accessJwt: $accessJwt, refreshJwt: $refreshJwt, handle: $handle, did: $did, didDoc: $didDoc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerCreateAccountImpl &&
            (identical(other.accessJwt, accessJwt) ||
                other.accessJwt == accessJwt) &&
            (identical(other.refreshJwt, refreshJwt) ||
                other.refreshJwt == refreshJwt) &&
            (identical(other.handle, handle) || other.handle == handle) &&
            (identical(other.did, did) || other.did == did) &&
            const DeepCollectionEquality().equals(other._didDoc, _didDoc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessJwt, refreshJwt, handle,
      did, const DeepCollectionEquality().hash(_didDoc));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerCreateAccountImplCopyWith<_$ServerCreateAccountImpl> get copyWith =>
      __$$ServerCreateAccountImplCopyWithImpl<_$ServerCreateAccountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerCreateAccountImplToJson(
      this,
    );
  }
}

abstract class _ServerCreateAccount implements ServerCreateAccount {
  const factory _ServerCreateAccount(
      {required final String accessJwt,
      required final String refreshJwt,
      required final String handle,
      required final String did,
      final Map<String, dynamic>? didDoc}) = _$ServerCreateAccountImpl;

  factory _ServerCreateAccount.fromJson(Map<String, dynamic> json) =
      _$ServerCreateAccountImpl.fromJson;

  @override
  String get accessJwt;
  @override
  String get refreshJwt;
  @override
  String get handle;
  @override
  String get did;
  @override
  Map<String, dynamic>? get didDoc;
  @override
  @JsonKey(ignore: true)
  _$$ServerCreateAccountImplCopyWith<_$ServerCreateAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
