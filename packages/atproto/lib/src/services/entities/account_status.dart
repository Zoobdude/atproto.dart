// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../lex_annotations.g.dart' as lex;

part 'account_status.freezed.dart';
part 'account_status.g.dart';

/// https://atprotodart.com/docs/lexicons/com/atproto/server/checkAccountStatus/#output
@freezed
@lex.comAtprotoServerCheckAccountStatus
class AccountStatus with _$AccountStatus {
  const factory AccountStatus({
    required bool activated,
    required bool validDid,
    required String repoCommit,
    required String repoRev,
    required int repoBlocks,
    required int indexedRecords,
    required int privateStateValues,
    required int expectedBlobs,
    required int importedBlobs,
  }) = _AccountStatus;

  factory AccountStatus.fromJson(Map<String, Object?> json) =>
      _$AccountStatusFromJson(json);
}
