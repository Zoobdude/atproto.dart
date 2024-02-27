// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../../../ids.g.dart';
import '../../../../lex_annotations.g.dart' as lex;

part 'link.freezed.dart';
part 'link.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/richtext/facet#link
@freezed
@lex.appBskyRichtextFacetLink
class Link with _$Link {
  const factory Link({
    @typeKey @Default(appBskyRichtextFacetLink) String type,
    required String uri,
  }) = _Link;

  factory Link.fromJson(Map<String, Object?> json) => _$LinkFromJson(json);
}
