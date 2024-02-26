// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto/lex_types.dart';
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../types/actor/defs/_z.dart';
import 'grouped_notification_reason.dart';

part 'grouped_notification.freezed.dart';
part 'grouped_notification.g.dart';

/// A class that encapsulates a grouped notification.
@freezed
class GroupedNotification with _$GroupedNotification {
  /// Creates a new instance of [GroupedNotification].
  @jsonSerializable
  const factory GroupedNotification({
    /// The unique URI for the notification content.
    ///
    /// This list is set in chronological order, with the uri of
    /// the most recent notification at the top.
    @atUriConverter required List<AtUri> uris,

    /// The collection of authors causing the notification.
    ///
    /// This list is set in chronological order, with the author of the
    /// most recent notification at the top.
    required List<ProfileView> authors,

    /// Specifies the reason for the notification.
    required GroupedNotificationReason reason,

    /// Optionally, represents the subject of the reason for the notification.
    @atUriConverter AtUri? reasonSubject,

    /// Indicates whether the notification has been read or not.
    required bool isRead,

    /// May include any labels attached to the notification.
    required List<LabelDefsLabel> labels,

    /// Might include additional data related to the notification.
    Map<String, dynamic>? record,

    /// Indicates the timestamp at which the notification was indexed.
    required DateTime indexedAt,
  }) = _GroupedNotification;

  factory GroupedNotification.fromJson(Map<String, Object?> json) =>
      _$GroupedNotificationFromJson(json);
}
