// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActorProfileRecordImpl _$$ActorProfileRecordImplFromJson(Map json) =>
    $checkedCreate(
      r'_$ActorProfileRecordImpl',
      json,
      ($checkedConvert) {
        final val = _$ActorProfileRecordImpl(
          type: $checkedConvert(
              r'$type', (v) => v as String? ?? appBskyActorProfile),
          displayName: $checkedConvert('displayName', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          avatar: $checkedConvert(
              'avatar',
              (v) => v == null
                  ? null
                  : Blob.fromJson(Map<String, Object?>.from(v as Map))),
          labels: $checkedConvert(
              'labels',
              (v) => _$JsonConverterFromJson<Map<String, dynamic>,
                      UActorProfileRecordLabels>(
                  v, unionActorProfileRecordLabelsConverter.fromJson)),
          banner: $checkedConvert(
              'banner',
              (v) => v == null
                  ? null
                  : Blob.fromJson(Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {'type': r'$type'},
    );

Map<String, dynamic> _$$ActorProfileRecordImplToJson(
    _$ActorProfileRecordImpl instance) {
  final val = <String, dynamic>{
    r'$type': instance.type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('displayName', instance.displayName);
  writeNotNull('description', instance.description);
  writeNotNull('avatar', instance.avatar?.toJson());
  writeNotNull(
      'labels',
      _$JsonConverterToJson<Map<String, dynamic>, UActorProfileRecordLabels>(
          instance.labels, unionActorProfileRecordLabelsConverter.toJson));
  writeNotNull('banner', instance.banner?.toJson());
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
