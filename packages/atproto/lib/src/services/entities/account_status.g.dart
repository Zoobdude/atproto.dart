// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'account_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountStatusImpl _$$AccountStatusImplFromJson(Map json) => $checkedCreate(
      r'_$AccountStatusImpl',
      json,
      ($checkedConvert) {
        final val = _$AccountStatusImpl(
          activated: $checkedConvert('activated', (v) => v as bool),
          validDid: $checkedConvert('validDid', (v) => v as bool),
          repoCommit: $checkedConvert('repoCommit', (v) => v as String),
          repoRev: $checkedConvert('repoRev', (v) => v as String),
          repoBlocks: $checkedConvert('repoBlocks', (v) => v as int),
          indexedRecords: $checkedConvert('indexedRecords', (v) => v as int),
          privateStateValues:
              $checkedConvert('privateStateValues', (v) => v as int),
          expectedBlobs: $checkedConvert('expectedBlobs', (v) => v as int),
          importedBlobs: $checkedConvert('importedBlobs', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AccountStatusImplToJson(_$AccountStatusImpl instance) =>
    <String, dynamic>{
      'activated': instance.activated,
      'validDid': instance.validDid,
      'repoCommit': instance.repoCommit,
      'repoRev': instance.repoRev,
      'repoBlocks': instance.repoBlocks,
      'indexedRecords': instance.indexedRecords,
      'privateStateValues': instance.privateStateValues,
      'expectedBlobs': instance.expectedBlobs,
      'importedBlobs': instance.importedBlobs,
    };
