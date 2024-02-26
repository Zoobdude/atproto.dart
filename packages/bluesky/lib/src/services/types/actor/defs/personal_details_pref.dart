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

part 'personal_details_pref.freezed.dart';
part 'personal_details_pref.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/actor/defs/#personaldetailspref
@freezed
@lex.appBskyActorDefsPersonalDetailsPref
class PersonalDetailsPref with _$PersonalDetailsPref {
  @jsonSerializable
  const factory PersonalDetailsPref({
    @typeKey @Default(appBskyActorDefsPersonalDetailsPref) String type,
    DateTime? birthDate,
  }) = _PersonalDetailsPref;

  factory PersonalDetailsPref.fromJson(Map<String, Object?> json) =>
      _$PersonalDetailsPrefFromJson(json);
}
