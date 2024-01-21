// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../../../lex_annotations.g.dart' as lex;
import 'feed.dart';
import 'links.dart';

part 'output.freezed.dart';
part 'output.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/feed/describeFeedGenerator#output
@freezed
@lex.appBskyFeedDescribeFeedGenerator
class FeedDescribeFeedGeneratorOutput with _$FeedDescribeFeedGeneratorOutput {
  @jsonSerializable
  const factory FeedDescribeFeedGeneratorOutput({
    required String did,
    required List<FeedDescribeFeedGeneratorFeed> feeds,
    FeedDescribeFeedGeneratorLinks? links,
  }) = _FeedDescribeFeedGeneratorOutput;

  factory FeedDescribeFeedGeneratorOutput.fromJson(Map<String, Object?> json) =>
      _$FeedDescribeFeedGeneratorOutputFromJson(json);
}
