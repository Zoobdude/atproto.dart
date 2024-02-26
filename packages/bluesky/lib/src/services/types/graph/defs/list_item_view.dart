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

part 'list_item_view.freezed.dart';
part 'list_item_view.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/graph/defs#listitemview
@freezed
@lex.appBskyGraphDefsListItemView
class GraphDefsListItemView with _$GraphDefsListItemView {
  const factory GraphDefsListItemView({
    @atUriConverter required AtUri uri,
    required ProfileView subject,
  }) = _GraphDefsListItemView;

  factory GraphDefsListItemView.fromJson(Map<String, Object?> json) =>
      _$GraphDefsListItemViewFromJson(json);
}
