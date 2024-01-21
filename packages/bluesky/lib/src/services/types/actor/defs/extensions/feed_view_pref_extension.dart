// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import '../feed_view_pref.dart';

extension ActorDefsFeedViewPrefExtension on ActorDefsFeedViewPref {
  bool get isHideReplies => hideReplies;
  bool get isHideRepliesByUnfollowed => hideRepliesByUnfollowed;
  bool get isHideReposts => hideReposts;
  bool get isHideQuotePosts => hideQuotePosts;
}
