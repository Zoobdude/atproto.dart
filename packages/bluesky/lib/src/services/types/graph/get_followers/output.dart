// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../../../lex_annotations.g.dart' as lex;
import '../../actor/defs/profile_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/graph/getfollowers/#output
@freezed
@lex.appBskyGraphGetFollowers
class GraphGetFollowersOutput with _$GraphGetFollowersOutput {
  @jsonSerializable
  const factory GraphGetFollowersOutput({
    required ProfileView subject,
    required List<ProfileView> followers,
    String? cursor,
  }) = _GraphGetFollowersOutput;

  factory GraphGetFollowersOutput.fromJson(Map<String, Object?> json) =>
      _$GraphGetFollowersOutputFromJson(json);
}
