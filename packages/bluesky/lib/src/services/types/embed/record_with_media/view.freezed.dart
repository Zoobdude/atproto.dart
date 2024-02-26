// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmbedRecordWithMediaView _$EmbedRecordWithMediaViewFromJson(
    Map<String, dynamic> json) {
  return _EmbedRecordWithMediaView.fromJson(json);
}

/// @nodoc
mixin _$EmbedRecordWithMediaView {
  @typeKey
  String get type => throw _privateConstructorUsedError;
  EmbedRecordView get record => throw _privateConstructorUsedError;
  @unionEmbedRecordWithMediaViewMediaConverter
  UEmbedRecordWithMediaViewMedia get media =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmbedRecordWithMediaViewCopyWith<EmbedRecordWithMediaView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbedRecordWithMediaViewCopyWith<$Res> {
  factory $EmbedRecordWithMediaViewCopyWith(EmbedRecordWithMediaView value,
          $Res Function(EmbedRecordWithMediaView) then) =
      _$EmbedRecordWithMediaViewCopyWithImpl<$Res, EmbedRecordWithMediaView>;
  @useResult
  $Res call(
      {@typeKey String type,
      EmbedRecordView record,
      @unionEmbedRecordWithMediaViewMediaConverter
      UEmbedRecordWithMediaViewMedia media});

  $EmbedRecordViewCopyWith<$Res> get record;
  $UEmbedRecordWithMediaViewMediaCopyWith<$Res> get media;
}

/// @nodoc
class _$EmbedRecordWithMediaViewCopyWithImpl<$Res,
        $Val extends EmbedRecordWithMediaView>
    implements $EmbedRecordWithMediaViewCopyWith<$Res> {
  _$EmbedRecordWithMediaViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? record = null,
    Object? media = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      record: null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as EmbedRecordView,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as UEmbedRecordWithMediaViewMedia,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmbedRecordViewCopyWith<$Res> get record {
    return $EmbedRecordViewCopyWith<$Res>(_value.record, (value) {
      return _then(_value.copyWith(record: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UEmbedRecordWithMediaViewMediaCopyWith<$Res> get media {
    return $UEmbedRecordWithMediaViewMediaCopyWith<$Res>(_value.media, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmbedRecordWithMediaViewImplCopyWith<$Res>
    implements $EmbedRecordWithMediaViewCopyWith<$Res> {
  factory _$$EmbedRecordWithMediaViewImplCopyWith(
          _$EmbedRecordWithMediaViewImpl value,
          $Res Function(_$EmbedRecordWithMediaViewImpl) then) =
      __$$EmbedRecordWithMediaViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@typeKey String type,
      EmbedRecordView record,
      @unionEmbedRecordWithMediaViewMediaConverter
      UEmbedRecordWithMediaViewMedia media});

  @override
  $EmbedRecordViewCopyWith<$Res> get record;
  @override
  $UEmbedRecordWithMediaViewMediaCopyWith<$Res> get media;
}

/// @nodoc
class __$$EmbedRecordWithMediaViewImplCopyWithImpl<$Res>
    extends _$EmbedRecordWithMediaViewCopyWithImpl<$Res,
        _$EmbedRecordWithMediaViewImpl>
    implements _$$EmbedRecordWithMediaViewImplCopyWith<$Res> {
  __$$EmbedRecordWithMediaViewImplCopyWithImpl(
      _$EmbedRecordWithMediaViewImpl _value,
      $Res Function(_$EmbedRecordWithMediaViewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? record = null,
    Object? media = null,
  }) {
    return _then(_$EmbedRecordWithMediaViewImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      record: null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as EmbedRecordView,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as UEmbedRecordWithMediaViewMedia,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmbedRecordWithMediaViewImpl implements _EmbedRecordWithMediaView {
  const _$EmbedRecordWithMediaViewImpl(
      {@typeKey this.type = appBskyEmbedRecordWithMediaView,
      required this.record,
      @unionEmbedRecordWithMediaViewMediaConverter required this.media});

  factory _$EmbedRecordWithMediaViewImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmbedRecordWithMediaViewImplFromJson(json);

  @override
  @typeKey
  final String type;
  @override
  final EmbedRecordView record;
  @override
  @unionEmbedRecordWithMediaViewMediaConverter
  final UEmbedRecordWithMediaViewMedia media;

  @override
  String toString() {
    return 'EmbedRecordWithMediaView(type: $type, record: $record, media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmbedRecordWithMediaViewImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.record, record) || other.record == record) &&
            (identical(other.media, media) || other.media == media));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, record, media);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmbedRecordWithMediaViewImplCopyWith<_$EmbedRecordWithMediaViewImpl>
      get copyWith => __$$EmbedRecordWithMediaViewImplCopyWithImpl<
          _$EmbedRecordWithMediaViewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmbedRecordWithMediaViewImplToJson(
      this,
    );
  }
}

abstract class _EmbedRecordWithMediaView implements EmbedRecordWithMediaView {
  const factory _EmbedRecordWithMediaView(
          {@typeKey final String type,
          required final EmbedRecordView record,
          @unionEmbedRecordWithMediaViewMediaConverter
          required final UEmbedRecordWithMediaViewMedia media}) =
      _$EmbedRecordWithMediaViewImpl;

  factory _EmbedRecordWithMediaView.fromJson(Map<String, dynamic> json) =
      _$EmbedRecordWithMediaViewImpl.fromJson;

  @override
  @typeKey
  String get type;
  @override
  EmbedRecordView get record;
  @override
  @unionEmbedRecordWithMediaViewMediaConverter
  UEmbedRecordWithMediaViewMedia get media;
  @override
  @JsonKey(ignore: true)
  _$$EmbedRecordWithMediaViewImplCopyWith<_$EmbedRecordWithMediaViewImpl>
      get copyWith => throw _privateConstructorUsedError;
}
