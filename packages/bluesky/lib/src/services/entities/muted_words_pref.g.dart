// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'muted_words_pref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MutedWordsPrefImpl _$$MutedWordsPrefImplFromJson(Map json) => $checkedCreate(
      r'_$MutedWordsPrefImpl',
      json,
      ($checkedConvert) {
        final val = _$MutedWordsPrefImpl(
          type: $checkedConvert(
              r'$type', (v) => v as String? ?? appBskyActorDefsMutedWordsPref),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      MutedWord.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'type': r'$type'},
    );

Map<String, dynamic> _$$MutedWordsPrefImplToJson(
        _$MutedWordsPrefImpl instance) =>
    <String, dynamic>{
      r'$type': instance.type,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
