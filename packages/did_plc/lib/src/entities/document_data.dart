// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_data.freezed.dart';
part 'document_data.g.dart';

@freezed
class DocumentData with _$DocumentData {
  /// Creates an instance of [DocumentData].
  @jsonSerializable
  const factory DocumentData({
    required String did,
    required Map<String, dynamic> verificationMethods,
    required List<String> rotationKeys,
    required List<String> alsoKnownAs,
    required Map<String, dynamic> services,
  }) = _DocumentData;

  /// Creates an instance of [DocumentData] from a map of [String, Object?].
  ///
  /// This factory constructor is used for deserializing JSON data into an
  /// [DocumentData] object.
  factory DocumentData.fromJson(Map<String, Object?> json) =>
      _$DocumentDataFromJson(json);
}
