// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_blob.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RepoListMissingBlobsRecordBlob _$RepoListMissingBlobsRecordBlobFromJson(
    Map<String, dynamic> json) {
  return _RepoListMissingBlobsRecordBlob.fromJson(json);
}

/// @nodoc
mixin _$RepoListMissingBlobsRecordBlob {
  String get cid => throw _privateConstructorUsedError;
  @atUriConverter
  AtUri get recordUri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepoListMissingBlobsRecordBlobCopyWith<RepoListMissingBlobsRecordBlob>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoListMissingBlobsRecordBlobCopyWith<$Res> {
  factory $RepoListMissingBlobsRecordBlobCopyWith(
          RepoListMissingBlobsRecordBlob value,
          $Res Function(RepoListMissingBlobsRecordBlob) then) =
      _$RepoListMissingBlobsRecordBlobCopyWithImpl<$Res,
          RepoListMissingBlobsRecordBlob>;
  @useResult
  $Res call({String cid, @atUriConverter AtUri recordUri});
}

/// @nodoc
class _$RepoListMissingBlobsRecordBlobCopyWithImpl<$Res,
        $Val extends RepoListMissingBlobsRecordBlob>
    implements $RepoListMissingBlobsRecordBlobCopyWith<$Res> {
  _$RepoListMissingBlobsRecordBlobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cid = null,
    Object? recordUri = null,
  }) {
    return _then(_value.copyWith(
      cid: null == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String,
      recordUri: null == recordUri
          ? _value.recordUri
          : recordUri // ignore: cast_nullable_to_non_nullable
              as AtUri,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepoListMissingBlobsRecordBlobImplCopyWith<$Res>
    implements $RepoListMissingBlobsRecordBlobCopyWith<$Res> {
  factory _$$RepoListMissingBlobsRecordBlobImplCopyWith(
          _$RepoListMissingBlobsRecordBlobImpl value,
          $Res Function(_$RepoListMissingBlobsRecordBlobImpl) then) =
      __$$RepoListMissingBlobsRecordBlobImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cid, @atUriConverter AtUri recordUri});
}

/// @nodoc
class __$$RepoListMissingBlobsRecordBlobImplCopyWithImpl<$Res>
    extends _$RepoListMissingBlobsRecordBlobCopyWithImpl<$Res,
        _$RepoListMissingBlobsRecordBlobImpl>
    implements _$$RepoListMissingBlobsRecordBlobImplCopyWith<$Res> {
  __$$RepoListMissingBlobsRecordBlobImplCopyWithImpl(
      _$RepoListMissingBlobsRecordBlobImpl _value,
      $Res Function(_$RepoListMissingBlobsRecordBlobImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cid = null,
    Object? recordUri = null,
  }) {
    return _then(_$RepoListMissingBlobsRecordBlobImpl(
      cid: null == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String,
      recordUri: null == recordUri
          ? _value.recordUri
          : recordUri // ignore: cast_nullable_to_non_nullable
              as AtUri,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _$RepoListMissingBlobsRecordBlobImpl
    implements _RepoListMissingBlobsRecordBlob {
  const _$RepoListMissingBlobsRecordBlobImpl(
      {required this.cid, @atUriConverter required this.recordUri});

  factory _$RepoListMissingBlobsRecordBlobImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RepoListMissingBlobsRecordBlobImplFromJson(json);

  @override
  final String cid;
  @override
  @atUriConverter
  final AtUri recordUri;

  @override
  String toString() {
    return 'RepoListMissingBlobsRecordBlob(cid: $cid, recordUri: $recordUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoListMissingBlobsRecordBlobImpl &&
            (identical(other.cid, cid) || other.cid == cid) &&
            (identical(other.recordUri, recordUri) ||
                other.recordUri == recordUri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cid, recordUri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoListMissingBlobsRecordBlobImplCopyWith<
          _$RepoListMissingBlobsRecordBlobImpl>
      get copyWith => __$$RepoListMissingBlobsRecordBlobImplCopyWithImpl<
          _$RepoListMissingBlobsRecordBlobImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepoListMissingBlobsRecordBlobImplToJson(
      this,
    );
  }
}

abstract class _RepoListMissingBlobsRecordBlob
    implements RepoListMissingBlobsRecordBlob {
  const factory _RepoListMissingBlobsRecordBlob(
          {required final String cid,
          @atUriConverter required final AtUri recordUri}) =
      _$RepoListMissingBlobsRecordBlobImpl;

  factory _RepoListMissingBlobsRecordBlob.fromJson(Map<String, dynamic> json) =
      _$RepoListMissingBlobsRecordBlobImpl.fromJson;

  @override
  String get cid;
  @override
  @atUriConverter
  AtUri get recordUri;
  @override
  @JsonKey(ignore: true)
  _$$RepoListMissingBlobsRecordBlobImplCopyWith<
          _$RepoListMissingBlobsRecordBlobImpl>
      get copyWith => throw _privateConstructorUsedError;
}
