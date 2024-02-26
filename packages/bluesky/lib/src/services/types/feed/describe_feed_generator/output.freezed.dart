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

FeedDescribeFeedGeneratorOutput _$FeedDescribeFeedGeneratorOutputFromJson(
    Map<String, dynamic> json) {
  return _FeedDescribeFeedGeneratorOutput.fromJson(json);
}

/// @nodoc
mixin _$FeedDescribeFeedGeneratorOutput {
  String get did => throw _privateConstructorUsedError;
  List<FeedDescribeFeedGeneratorFeed> get feeds =>
      throw _privateConstructorUsedError;
  FeedDescribeFeedGeneratorLinks? get links =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedDescribeFeedGeneratorOutputCopyWith<FeedDescribeFeedGeneratorOutput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedDescribeFeedGeneratorOutputCopyWith<$Res> {
  factory $FeedDescribeFeedGeneratorOutputCopyWith(
          FeedDescribeFeedGeneratorOutput value,
          $Res Function(FeedDescribeFeedGeneratorOutput) then) =
      _$FeedDescribeFeedGeneratorOutputCopyWithImpl<$Res,
          FeedDescribeFeedGeneratorOutput>;
  @useResult
  $Res call(
      {String did,
      List<FeedDescribeFeedGeneratorFeed> feeds,
      FeedDescribeFeedGeneratorLinks? links});

  $FeedDescribeFeedGeneratorLinksCopyWith<$Res>? get links;
}

/// @nodoc
class _$FeedDescribeFeedGeneratorOutputCopyWithImpl<$Res,
        $Val extends FeedDescribeFeedGeneratorOutput>
    implements $FeedDescribeFeedGeneratorOutputCopyWith<$Res> {
  _$FeedDescribeFeedGeneratorOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? did = null,
    Object? feeds = null,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      did: null == did
          ? _value.did
          : did // ignore: cast_nullable_to_non_nullable
              as String,
      feeds: null == feeds
          ? _value.feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<FeedDescribeFeedGeneratorFeed>,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as FeedDescribeFeedGeneratorLinks?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FeedDescribeFeedGeneratorLinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $FeedDescribeFeedGeneratorLinksCopyWith<$Res>(_value.links!,
        (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedDescribeFeedGeneratorOutputImplCopyWith<$Res>
    implements $FeedDescribeFeedGeneratorOutputCopyWith<$Res> {
  factory _$$FeedDescribeFeedGeneratorOutputImplCopyWith(
          _$FeedDescribeFeedGeneratorOutputImpl value,
          $Res Function(_$FeedDescribeFeedGeneratorOutputImpl) then) =
      __$$FeedDescribeFeedGeneratorOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String did,
      List<FeedDescribeFeedGeneratorFeed> feeds,
      FeedDescribeFeedGeneratorLinks? links});

  @override
  $FeedDescribeFeedGeneratorLinksCopyWith<$Res>? get links;
}

/// @nodoc
class __$$FeedDescribeFeedGeneratorOutputImplCopyWithImpl<$Res>
    extends _$FeedDescribeFeedGeneratorOutputCopyWithImpl<$Res,
        _$FeedDescribeFeedGeneratorOutputImpl>
    implements _$$FeedDescribeFeedGeneratorOutputImplCopyWith<$Res> {
  __$$FeedDescribeFeedGeneratorOutputImplCopyWithImpl(
      _$FeedDescribeFeedGeneratorOutputImpl _value,
      $Res Function(_$FeedDescribeFeedGeneratorOutputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? did = null,
    Object? feeds = null,
    Object? links = freezed,
  }) {
    return _then(_$FeedDescribeFeedGeneratorOutputImpl(
      did: null == did
          ? _value.did
          : did // ignore: cast_nullable_to_non_nullable
              as String,
      feeds: null == feeds
          ? _value._feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<FeedDescribeFeedGeneratorFeed>,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as FeedDescribeFeedGeneratorLinks?,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _$FeedDescribeFeedGeneratorOutputImpl
    implements _FeedDescribeFeedGeneratorOutput {
  const _$FeedDescribeFeedGeneratorOutputImpl(
      {required this.did,
      required final List<FeedDescribeFeedGeneratorFeed> feeds,
      this.links})
      : _feeds = feeds;

  factory _$FeedDescribeFeedGeneratorOutputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FeedDescribeFeedGeneratorOutputImplFromJson(json);

  @override
  final String did;
  final List<FeedDescribeFeedGeneratorFeed> _feeds;
  @override
  List<FeedDescribeFeedGeneratorFeed> get feeds {
    if (_feeds is EqualUnmodifiableListView) return _feeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feeds);
  }

  @override
  final FeedDescribeFeedGeneratorLinks? links;

  @override
  String toString() {
    return 'FeedDescribeFeedGeneratorOutput(did: $did, feeds: $feeds, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedDescribeFeedGeneratorOutputImpl &&
            (identical(other.did, did) || other.did == did) &&
            const DeepCollectionEquality().equals(other._feeds, _feeds) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, did, const DeepCollectionEquality().hash(_feeds), links);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedDescribeFeedGeneratorOutputImplCopyWith<
          _$FeedDescribeFeedGeneratorOutputImpl>
      get copyWith => __$$FeedDescribeFeedGeneratorOutputImplCopyWithImpl<
          _$FeedDescribeFeedGeneratorOutputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedDescribeFeedGeneratorOutputImplToJson(
      this,
    );
  }
}

abstract class _FeedDescribeFeedGeneratorOutput
    implements FeedDescribeFeedGeneratorOutput {
  const factory _FeedDescribeFeedGeneratorOutput(
          {required final String did,
          required final List<FeedDescribeFeedGeneratorFeed> feeds,
          final FeedDescribeFeedGeneratorLinks? links}) =
      _$FeedDescribeFeedGeneratorOutputImpl;

  factory _FeedDescribeFeedGeneratorOutput.fromJson(Map<String, dynamic> json) =
      _$FeedDescribeFeedGeneratorOutputImpl.fromJson;

  @override
  String get did;
  @override
  List<FeedDescribeFeedGeneratorFeed> get feeds;
  @override
  FeedDescribeFeedGeneratorLinks? get links;
  @override
  @JsonKey(ignore: true)
  _$$FeedDescribeFeedGeneratorOutputImplCopyWith<
          _$FeedDescribeFeedGeneratorOutputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
