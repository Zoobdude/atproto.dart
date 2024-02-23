// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../ids.g.dart';
import '../../lex_annotations.g.dart' as lex;

part 'saved_feeds_preference.freezed.dart';
part 'saved_feeds_preference.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/actor/defs/#savedfeedspref
@freezed
@lex.appBskyActorDefsSavedFeedsPref
@Deprecated('Use ActorDefsSavedFeedsPref instead. Will be removed')
class SavedFeedsPreference with _$SavedFeedsPreference {
  @jsonSerializable
  const factory SavedFeedsPreference({
    @typeKey @Default(appBskyActorDefsSavedFeedsPref) String type,
    @JsonKey(name: 'pinned') @atUriConverter required List<AtUri> pinnedUris,
    @atUriConverter @JsonKey(name: 'saved') required List<AtUri> savedUris,
    int? timelineIndex,
  }) = _SavedFeedsPreference;

  factory SavedFeedsPreference.fromJson(Map<String, Object?> json) =>
      _$SavedFeedsPreferenceFromJson(json);
}
