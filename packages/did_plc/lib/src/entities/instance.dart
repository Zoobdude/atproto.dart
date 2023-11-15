// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'instance.freezed.dart';
part 'instance.g.dart';

@freezed
class Instance with _$Instance {
  /// Creates an instance of [Instance].
  @jsonSerializable
  const factory Instance({
    required String version,
  }) = _Instance;

  /// Creates an instance of [Instance] from a map of
  /// [String, Object?].
  ///
  /// This factory constructor is used for deserializing JSON data into an
  /// [Instance] object.
  factory Instance.fromJson(Map<String, Object?> json) =>
      _$InstanceFromJson(json);
}
