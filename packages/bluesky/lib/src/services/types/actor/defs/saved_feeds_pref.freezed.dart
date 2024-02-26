// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_feeds_pref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActorDefsSavedFeedsPref _$ActorDefsSavedFeedsPrefFromJson(
    Map<String, dynamic> json) {
  return _ActorDefsSavedFeedsPref.fromJson(json);
}

/// @nodoc
mixin _$ActorDefsSavedFeedsPref {
  @typeKey
  String get type => throw _privateConstructorUsedError;
  @atUriConverter
  List<AtUri> get pinned => throw _privateConstructorUsedError;
  @atUriConverter
  List<AtUri> get saved => throw _privateConstructorUsedError;
  int? get timelineIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorDefsSavedFeedsPrefCopyWith<ActorDefsSavedFeedsPref> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorDefsSavedFeedsPrefCopyWith<$Res> {
  factory $ActorDefsSavedFeedsPrefCopyWith(ActorDefsSavedFeedsPref value,
          $Res Function(ActorDefsSavedFeedsPref) then) =
      _$ActorDefsSavedFeedsPrefCopyWithImpl<$Res, ActorDefsSavedFeedsPref>;
  @useResult
  $Res call(
      {@typeKey String type,
      @atUriConverter List<AtUri> pinned,
      @atUriConverter List<AtUri> saved,
      int? timelineIndex});
}

/// @nodoc
class _$ActorDefsSavedFeedsPrefCopyWithImpl<$Res,
        $Val extends ActorDefsSavedFeedsPref>
    implements $ActorDefsSavedFeedsPrefCopyWith<$Res> {
  _$ActorDefsSavedFeedsPrefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? pinned = null,
    Object? saved = null,
    Object? timelineIndex = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      pinned: null == pinned
          ? _value.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as List<AtUri>,
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as List<AtUri>,
      timelineIndex: freezed == timelineIndex
          ? _value.timelineIndex
          : timelineIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActorDefsSavedFeedsPrefImplCopyWith<$Res>
    implements $ActorDefsSavedFeedsPrefCopyWith<$Res> {
  factory _$$ActorDefsSavedFeedsPrefImplCopyWith(
          _$ActorDefsSavedFeedsPrefImpl value,
          $Res Function(_$ActorDefsSavedFeedsPrefImpl) then) =
      __$$ActorDefsSavedFeedsPrefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@typeKey String type,
      @atUriConverter List<AtUri> pinned,
      @atUriConverter List<AtUri> saved,
      int? timelineIndex});
}

/// @nodoc
class __$$ActorDefsSavedFeedsPrefImplCopyWithImpl<$Res>
    extends _$ActorDefsSavedFeedsPrefCopyWithImpl<$Res,
        _$ActorDefsSavedFeedsPrefImpl>
    implements _$$ActorDefsSavedFeedsPrefImplCopyWith<$Res> {
  __$$ActorDefsSavedFeedsPrefImplCopyWithImpl(
      _$ActorDefsSavedFeedsPrefImpl _value,
      $Res Function(_$ActorDefsSavedFeedsPrefImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? pinned = null,
    Object? saved = null,
    Object? timelineIndex = freezed,
  }) {
    return _then(_$ActorDefsSavedFeedsPrefImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      pinned: null == pinned
          ? _value._pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as List<AtUri>,
      saved: null == saved
          ? _value._saved
          : saved // ignore: cast_nullable_to_non_nullable
              as List<AtUri>,
      timelineIndex: freezed == timelineIndex
          ? _value.timelineIndex
          : timelineIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _$ActorDefsSavedFeedsPrefImpl implements _ActorDefsSavedFeedsPref {
  const _$ActorDefsSavedFeedsPrefImpl(
      {@typeKey this.type = appBskyActorDefsSavedFeedsPref,
      @atUriConverter required final List<AtUri> pinned,
      @atUriConverter required final List<AtUri> saved,
      this.timelineIndex})
      : _pinned = pinned,
        _saved = saved;

  factory _$ActorDefsSavedFeedsPrefImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActorDefsSavedFeedsPrefImplFromJson(json);

  @override
  @typeKey
  final String type;
  final List<AtUri> _pinned;
  @override
  @atUriConverter
  List<AtUri> get pinned {
    if (_pinned is EqualUnmodifiableListView) return _pinned;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pinned);
  }

  final List<AtUri> _saved;
  @override
  @atUriConverter
  List<AtUri> get saved {
    if (_saved is EqualUnmodifiableListView) return _saved;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saved);
  }

  @override
  final int? timelineIndex;

  @override
  String toString() {
    return 'ActorDefsSavedFeedsPref(type: $type, pinned: $pinned, saved: $saved, timelineIndex: $timelineIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActorDefsSavedFeedsPrefImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._pinned, _pinned) &&
            const DeepCollectionEquality().equals(other._saved, _saved) &&
            (identical(other.timelineIndex, timelineIndex) ||
                other.timelineIndex == timelineIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      const DeepCollectionEquality().hash(_pinned),
      const DeepCollectionEquality().hash(_saved),
      timelineIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActorDefsSavedFeedsPrefImplCopyWith<_$ActorDefsSavedFeedsPrefImpl>
      get copyWith => __$$ActorDefsSavedFeedsPrefImplCopyWithImpl<
          _$ActorDefsSavedFeedsPrefImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActorDefsSavedFeedsPrefImplToJson(
      this,
    );
  }
}

abstract class _ActorDefsSavedFeedsPref implements ActorDefsSavedFeedsPref {
  const factory _ActorDefsSavedFeedsPref(
      {@typeKey final String type,
      @atUriConverter required final List<AtUri> pinned,
      @atUriConverter required final List<AtUri> saved,
      final int? timelineIndex}) = _$ActorDefsSavedFeedsPrefImpl;

  factory _ActorDefsSavedFeedsPref.fromJson(Map<String, dynamic> json) =
      _$ActorDefsSavedFeedsPrefImpl.fromJson;

  @override
  @typeKey
  String get type;
  @override
  @atUriConverter
  List<AtUri> get pinned;
  @override
  @atUriConverter
  List<AtUri> get saved;
  @override
  int? get timelineIndex;
  @override
  @JsonKey(ignore: true)
  _$$ActorDefsSavedFeedsPrefImplCopyWith<_$ActorDefsSavedFeedsPrefImpl>
      get copyWith => throw _privateConstructorUsedError;
}
