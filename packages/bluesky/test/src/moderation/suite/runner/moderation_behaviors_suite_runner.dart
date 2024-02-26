// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:atproto/lex_types.dart';
import 'package:atproto_core/atproto_core.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:bluesky/src/moderation/entities/labeler.dart';
import 'package:bluesky/src/moderation/entities/labeler_settings.dart';
import 'package:bluesky/src/moderation/entities/moderation_cause.dart';
import 'package:bluesky/src/moderation/entities/moderation_cause_source.dart';
import 'package:bluesky/src/moderation/entities/moderation_options.dart';
import 'package:bluesky/src/moderation/entities/moderation_subject_post.dart';
import 'package:bluesky/src/moderation/entities/moderation_subject_profile.dart';
import 'package:bluesky/src/moderation/entities/moderation_ui.dart';
import 'package:bluesky/src/services/types/actor/defs/_z.dart';
import 'package:bluesky/src/services/types/embed/record/_z.dart';
import 'package:bluesky/src/services/types/feed/defs/_z.dart';
import 'package:bluesky/src/services/types/feed/post/_z.dart';
import 'package:bluesky/src/services/types/graph/defs/_z.dart';
import '../moderation_behavior_result.dart';
import '../moderation_behavior_scenario.dart';
import '../moderation_behavior_scenario_labels.dart';
import '../moderation_behaviors.dart';

final class ModerationBehaviorSuiteRunner {
  const ModerationBehaviorSuiteRunner(this.suite);

  final ModerationBehaviors suite;

  ModerationSubjectProfile getProfileScenario(
    final ModerationBehaviorScenario scenario,
  ) {
    if (scenario.subject != ScenarioSubjectType.profile) throw Error();

    return ModerationSubjectProfile.profileViewBasic(
      data: _getProfileViewBasic(scenario.author, scenario.labels),
    );
  }

  ModerationSubjectPost getPostScenario(
    final ModerationBehaviorScenario scenario,
  ) {
    if (scenario.subject != ScenarioSubjectType.post) throw Error();

    final author = _getProfileViewBasic(scenario.author, scenario.labels);

    return ModerationSubjectPost.postView(
      data: FeedDefsPostView(
        record: FeedPostRecord(
          text: 'Post text',
          createdAt: DateTime.now(),
        ),
        author: author,
        uri: AtUri.parse('at://${author.did}/app.bsky.post/fake'),
        cid: 'fake',
        labels: (scenario.labels.post ?? const [])
            .map(
              (label) => _getLabel(
                label,
                'at://${author.did}/app.bsky.feed.post/fake',
              ),
            )
            .toList(),
        embed: scenario.quoteAuthor != null
            ? UFeedDefsPostViewEmbed.embedRecordView(
                data: EmbedRecordView(
                  record: UEmbedRecordViewRecord.viewRecord(
                    data: EmbedRecordViewRecord(
                      type: 'app.bsky.embed.record#viewRecord',
                      value: FeedPostRecord(
                        text: 'Quoted post text',
                        createdAt: DateTime.now(),
                      ),
                      uri: AtUri.parse('at://${author.did}/app.bsky.post/fake'),
                      cid: 'fake',
                      labels: scenario.labels.quotedPost
                          ?.map(
                            (label) => _getLabel(
                              label,
                              'at://${author.did}/app.bsky.feed.post/fake',
                            ),
                          )
                          .toList(),
                      author: _getProfileViewBasic(
                        scenario.quoteAuthor!,
                        scenario.labels.copyWith(
                          account: scenario.labels.quotedAccount,
                        ),
                      ),
                      indexedAt: DateTime.now(),
                    ),
                  ),
                ),
              )
            : null,
        indexedAt: DateTime.now(),
      ),
    );
  }

  ModerationOptions getModerationOptions(
    final ModerationBehaviorScenario scenario,
  ) =>
      ModerationOptions(
        userDid: suite.configurations[scenario.cfg]?.isAuthed == false
            ? ''
            : 'did:web:self.test',
        isAdultContentEnabled:
            suite.configurations[scenario.cfg]?.isAdultContentEnabled ?? false,
        labels: suite.configurations[scenario.cfg]?.settings ?? const {},
        labelers: [
          LabelerSettings(
            labeler: Labeler(
              did: 'did:plc:fake-labeler',
              displayName: 'Fake Labeler',
            ),
            labels: suite.configurations[scenario.cfg]?.settings ?? const {},
          ),
        ],
      );

  ProfileViewBasic _getProfileViewBasic(
    final String name,
    final ModerationBehaviorScenarioLabels scenarioLabels,
  ) {
    final def = suite.users[name]!;
    final labels = <LabelDefsLabel>[];

    if (scenarioLabels.account != null) {
      for (final label in scenarioLabels.account!) {
        labels.add(_getLabel(label, 'did:web:$name'));
      }
    }

    if (scenarioLabels.profile != null) {
      for (final label in scenarioLabels.profile!) {
        labels.add(_getLabel(
          label,
          'at://did:web:$name/app.bsky.actor.profile/self',
        ));
      }
    }

    return ProfileViewBasic(
      did: 'did:web:$name.test',
      handle: '$name.test',
      labels: labels,
      viewer: ViewerState(
        muted: def.isMuted || def.isMutedByList,
        mutedByList: def.isMutedByList
            ? GraphDefsListViewBasic(
                uri: AtUri.parse('at://did:plc:fake/app.bsky.graph.list/fake'),
                cid: 'fake',
                name: 'Fake List',
                indexedAt: DateTime.now(),
              )
            : null,
        blockedBy: def.isBlockedBy,
        blocking: def.isBlocking || def.isBlockingByList
            ? AtUri.parse('at://did:web:self.test/app.bsky.graph.block/fake')
            : null,
        blockingByList: def.isBlockingByList
            ? GraphDefsListViewBasic(
                uri: AtUri.parse('at://did:plc:fake/app.bsky.graph.list/fake'),
                cid: 'fake',
                name: 'Fake List',
                indexedAt: DateTime.now(),
              )
            : null,
      ),
    );
  }

  LabelDefsLabel _getLabel(final String value, final String uri) =>
      LabelDefsLabel(
        src: 'did:plc:fake-labeler',
        uri: uri,
        val: value,
        cts: DateTime.now(),
      );
}

void expectToBeModerationResult(
  final ModerationUI actual,
  final ModerationBehaviorResult? expected, {
  required String context,
  bool ignoreCause = false,
}) {
  final causeType = _getCauseType(actual.cause);

  if (expected == null) {
    expect(
      !ignoreCause && actual.cause != null,
      isFalse,
      reason: '$context expected to be a no-op, got '
          '${actual.cause}',
    );
    expect(
      actual.isAlert,
      isFalse,
      reason: '$context expected to be a no-op, got alert=true',
    );
    expect(
      actual.isBlur,
      isFalse,
      reason: '$context expected to be a no-op, got blur=true',
    );
    expect(
      actual.isFilter,
      isFalse,
      reason: '$context expected to be a no-op, got filter=true',
    );
    expect(
      actual.isNoOverride,
      isFalse,
      reason: '$context expected to be a no-op, got noOverride=true',
    );
  } else {
    expect(
      ignoreCause || causeType == expected.cause,
      isTrue,
      reason: '$context expected to be ${expected.cause}, got $causeType',
    );
    expect(
      actual.isAlert == expected.isAlert,
      isTrue,
      reason: '$context expected to be alert=${expected.isAlert}, got '
          '${actual.isAlert}',
    );
    expect(
      actual.isBlur == expected.isBlur,
      isTrue,
      reason: '$context expected to be blur=${expected.isBlur}, got '
          '${actual.isBlur}',
    );
    expect(
      actual.isFilter == expected.isFilter,
      isTrue,
      reason: '$context expected to be filter=${expected.isFilter}, got '
          '${actual.isFilter}',
    );
    expect(
      actual.isNoOverride == expected.isNoOverride,
      isTrue,
      reason:
          '$context expected to be noOverride=${expected.isNoOverride}, got '
          '${actual.isNoOverride}',
    );
  }
}

String _getCauseType(final ModerationCause? cause) =>
    cause?.whenOrNull(
      blocking: (data) => data.source is UModerationCauseSourceList
          ? 'blocking-by-list'
          : data.type,
      blockedBy: (data) => data.type,
      blockOther: (data) => data.type,
      label: (data) => 'label:${data.labelDefinition.id}',
      muted: (data) => data.source is UModerationCauseSourceList
          ? 'muted-by-list'
          : data.type,
    ) ??
    '';
