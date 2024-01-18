// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../lex_annotations.g.dart' as lex;

part 'count.freezed.dart';
part 'count.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/notification/getunreadcount/#output
@freezed
@lex.appBskyNotificationGetUnreadCount
@Deprecated('Use NotificationGetUnreadCountOutput instead. Will be removed')
class Count with _$Count {
  const factory Count({
    @Default(0) int count,
  }) = _Count;

  factory Count.fromJson(Map<String, Object?> json) => _$CountFromJson(json);
}
