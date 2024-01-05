// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../../lex_annotations.g.dart' as lex;
import '../gen/feed/defs/feed_defs_generator_view.dart';

part 'feed_get_feed_generators.freezed.dart';
part 'feed_get_feed_generators.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/feed/getfeedgenerators/#output
@freezed
@lex.appBskyFeedGetFeedGenerators
class Output with _$Output {
  @jsonSerializable
  const factory Output({
    required List<GeneratorView> feeds,
    String? cursor,
  }) = _Output;

  factory Output.fromJson(Map<String, Object?> json) => _$OutputFromJson(json);
}
