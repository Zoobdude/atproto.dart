// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto/lex_types.dart';
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../../../lex_annotations.g.dart' as lex;
import '../../actor/defs/profile_view.dart';
import 'constants/notification_reason_known_values.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/notification/listnotifications/#notification
@freezed
@lex.appBskyNotificationListNotificationsNotification
class Notification with _$Notification {
  @jsonSerializable
  const factory Notification({
    required String cid,
    @atUriConverter required AtUri uri,
    required ProfileView author,
    @JsonKey(unknownEnumValue: NotificationReason.unknown)
    required NotificationReason reason,
    @atUriConverter AtUri? reasonSubject,
    @Default(false) bool isRead,
    Map<String, dynamic>? record,
    List<LabelDefsLabel>? labels,
    required DateTime indexedAt,
  }) = _Notification;

  factory Notification.fromJson(Map<String, Object?> json) =>
      _$NotificationFromJson(json);
}
