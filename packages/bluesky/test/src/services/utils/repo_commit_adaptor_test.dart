// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:atproto/lex_types.dart';
import 'package:atproto_core/atproto_core.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:bluesky/src/services/types/feed/generator/_z.dart';
import 'package:bluesky/src/services/types/feed/like/_z.dart';
import 'package:bluesky/src/services/types/feed/post/_z.dart';
import 'package:bluesky/src/services/types/feed/repost/_z.dart';
import 'package:bluesky/src/services/types/feed/threadgate/_z.dart';
import 'package:bluesky/src/services/types/graph/block/_z.dart';
import 'package:bluesky/src/services/types/graph/follow/_z.dart';
import 'package:bluesky/src/services/types/graph/list/_z.dart';
import 'package:bluesky/src/services/types/graph/listblock/_z.dart';
import 'package:bluesky/src/services/types/graph/listitem/_z.dart';
import 'package:bluesky/src/services/utils/repo_commit_adaptor.dart';
import 'package:bluesky/src/services/utils/repo_commit_create.dart';
import 'package:bluesky/src/services/utils/repo_commit_delete.dart';
import 'package:bluesky/src/services/utils/repo_commit_update.dart';

// 🌎 Project imports:
import 'package:bluesky/src/services/types/actor/profile/_z.dart'
    as app_bsky_actor_profile;

void main() {
  group('.onCreatePost', () {
    test('when created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreatePost: (data) {
          expect(data, isA<RepoCommitCreate>());
          expect(data.record, isA<FeedPostRecord>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.post/3k27u2pzoly2q',
            {
              objectType: 'app.bsky.feed.post',
              'text': 'test',
              'createdAt': DateTime.now().toIso8601String(),
            },
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreatePost: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.dummy/3k27u2pzoly2q',
            {},
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onCreateRepost', () {
    test('when created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreateRepost: (data) {
          expect(data, isA<RepoCommitCreate>());
          expect(data.record, isA<FeedRepostRecord>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.repost/3k27u2pzoly2q',
            {
              objectType: 'app.bsky.feed.repost',
              'subject': {
                'cid': '1111',
                'uri':
                    'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.repost/3k27u2pzoly2q',
              },
              'createdAt': DateTime.now().toIso8601String(),
            },
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreateRepost: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.dummy/3k27u2pzoly2q',
            {},
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onCreateLike', () {
    test('when created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreateLike: (data) {
          expect(data, isA<RepoCommitCreate>());
          expect(data.record, isA<FeedLikeRecord>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.like/3k27u2pzoly2q',
            {
              objectType: 'app.bsky.feed.like',
              'subject': {
                'cid': '1111',
                'uri':
                    'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.like/3k27u2pzoly2q',
              },
              'createdAt': DateTime.now().toIso8601String(),
            },
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreateLike: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.dummy/3k27u2pzoly2q',
            {},
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onCreateGenerator', () {
    test('when created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreateGenerator: (data) {
          expect(data, isA<RepoCommitCreate>());
          expect(data.record, isA<FeedGeneratorRecord>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.generator/3k27u2pzoly2q',
            {
              objectType: 'app.bsky.feed.generator',
              'did': 'aaaaaa',
              'displayName': 'test',
              'createdAt': DateTime.now().toIso8601String(),
            },
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreateGenerator: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.dummy/3k27u2pzoly2q',
            {},
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onCreateThreadgate', () {
    test('when created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreateThreadgate: (data) {
          expect(data, isA<RepoCommitCreate>());
          expect(data.record, isA<FeedThreadgateRecord>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.threadgate/3k27u2pzoly2q',
            {
              objectType: 'app.bsky.feed.threadgate',
              'post':
                  'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.generator/3k27u2pzoly2q',
              'allow': [
                {
                  r'$type': 'app.bsky.feed.threadgate#mentionRule',
                },
                {
                  r'$type': 'app.bsky.feed.threadgate#followingRule',
                },
                {
                  r'$type': 'app.bsky.feed.threadgate#listRule',
                  'list': 'at://foo.com/com.example.foo/123',
                }
              ],
              'createdAt': DateTime.now().toIso8601String(),
            },
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreateThreadgate: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.dummy/3k27u2pzoly2q',
            {},
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onCreateFollow', () {
    test('when created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreateFollow: (data) {
          expect(data, isA<RepoCommitCreate>());
          expect(data.record, isA<GraphFollowRecord>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.follow/3k27u2pzoly2q',
            {
              objectType: 'app.bsky.graph.follow',
              'subject': 'aaaaaa',
              'createdAt': DateTime.now().toIso8601String(),
            },
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreateFollow: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.dummy/3k27u2pzoly2q',
            {},
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onCreateBlock', () {
    test('when created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreateBlock: (data) {
          expect(data, isA<RepoCommitCreate>());
          expect(data.record, isA<GraphBlockRecord>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.block/3k27u2pzoly2q',
            {
              objectType: 'app.bsky.graph.block',
              'subject': 'aaaaaa',
              'createdAt': DateTime.now().toIso8601String(),
            },
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreateBlock: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.dummy/3k27u2pzoly2q',
            {},
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onCreateList', () {
    test('when created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreateList: (data) {
          expect(data, isA<RepoCommitCreate>());
          expect(data.record, isA<GraphListRecord>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.list/3k27u2pzoly2q',
            {
              objectType: 'app.bsky.graph.list',
              'name': 'aaaaaa',
              'purpose': 'aaaaaaa',
              'createdAt': DateTime.now().toIso8601String(),
            },
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreateList: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.dummy/3k27u2pzoly2q',
            {},
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onCreateListItem', () {
    test('when created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreateListItem: (data) {
          expect(data, isA<RepoCommitCreate>());
          expect(data.record, isA<GraphListitemRecord>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.listitem/3k27u2pzoly2q',
            {
              objectType: 'app.bsky.graph.listitem',
              'list':
                  'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.list/3k27u2pzoly2q',
              'subject': 'aaaaaaa',
              'createdAt': DateTime.now().toIso8601String(),
            },
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreateListItem: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.dummy/3k27u2pzoly2q',
            {},
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onCreateBlockList', () {
    test('when created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreateBlockList: (data) {
          expect(data, isA<RepoCommitCreate>());
          expect(data.record, isA<GraphListblockRecord>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.listblock/3k27u2pzoly2q',
            {
              objectType: 'app.bsky.graph.listblock',
              'subject':
                  'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.list/3k27u2pzoly2q',
              'createdAt': DateTime.now().toIso8601String(),
            },
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreateBlockList: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.dummy/3k27u2pzoly2q',
            {},
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onCreateUnknown', () {
    test('when created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onCreateUnknown: (data) {
          expect(data, isA<RepoCommitCreate>());
          expect(data.record, isA<Map<String, dynamic>>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildCreateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.dummy/3k27u2pzoly2q',
            {},
          ),
        ),
      );

      expect(result, isTrue);
    });
  });

  test('when not created', () async {
    bool result = false;

    final adaptor = RepoCommitAdaptor(
      onCreateUnknown: (data) {
        result = true;
      },
    );

    adaptor.execute(
      _buildSubscribedRepoCommit(
        _buildCreateRepoOp(
          'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.listitem/3k27u2pzoly2q',
          {
            objectType: 'app.bsky.graph.listitem',
            'list':
                'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.list/3k27u2pzoly2q',
            'subject': 'aaaaaaa',
            'createdAt': DateTime.now().toIso8601String(),
          },
        ),
      ),
    );

    expect(result, isFalse);
  });

  group('.onUpdateProfile', () {
    test('when created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onUpdateProfile: (data) {
          expect(data, isA<RepoCommitUpdate>());
          expect(data.record, isA<app_bsky_actor_profile.Record>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildUpdateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.actor.profile/3k27u2pzoly2q',
            {
              objectType: 'app.bsky.actor.profile',
            },
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onUpdateProfile: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildUpdateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.actor.dummy/3k27u2pzoly2q',
            {},
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onUpdateUnknown', () {
    test('when created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onUpdateUnknown: (data) {
          expect(data, isA<RepoCommitUpdate>());
          expect(data.record, isA<Map<String, dynamic>>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildUpdateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.actor.dummy/3k27u2pzoly2q',
            {},
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onUpdateUnknown: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildUpdateRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.actor.profile/3k27u2pzoly2q',
            {
              objectType: 'app.bsky.actor.profile',
            },
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onDeletePost', () {
    test('when deleted', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeletePost: (data) {
          expect(data, isA<RepoCommitDelete>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.post/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not deleted', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeletePost: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.dummy/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onDeleteRepost', () {
    test('when deleted', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeleteRepost: (data) {
          expect(data, isA<RepoCommitDelete>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.repost/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not deleted', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeleteRepost: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.dummy/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onDeleteLike', () {
    test('when deleted', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeleteLike: (data) {
          expect(data, isA<RepoCommitDelete>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.like/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not deleted', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeleteLike: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.dummy/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onDeleteGenerator', () {
    test('when deleted', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeleteGenerator: (data) {
          expect(data, isA<RepoCommitDelete>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.generator/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not deleted', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeleteGenerator: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.dummy/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onDeleteThreadgate', () {
    test('when deleted', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeleteThreadgate: (data) {
          expect(data, isA<RepoCommitDelete>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.threadgate/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not deleted', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeleteThreadgate: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.feed.dummy/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onDeleteFollow', () {
    test('when deleted', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeleteFollow: (data) {
          expect(data, isA<RepoCommitDelete>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.follow/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not deleted', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeleteFollow: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.dummy/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onDeleteBlock', () {
    test('when deleted', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeleteBlock: (data) {
          expect(data, isA<RepoCommitDelete>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.block/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not deleted', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeleteBlock: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.dummy/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onDeleteList', () {
    test('when created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeleteList: (data) {
          expect(data, isA<RepoCommitDelete>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.list/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not created', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeleteList: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.dummy/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onDeleteListItem', () {
    test('when deleted', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeleteListItem: (data) {
          expect(data, isA<RepoCommitDelete>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.listitem/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not deleted', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeleteListItem: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.dummy/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onDeleteBlockList', () {
    test('when deleted', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeleteBlockList: (data) {
          expect(data, isA<RepoCommitDelete>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.listblock/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not deleted', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeleteBlockList: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.dummy/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isFalse);
    });
  });

  group('.onDeleteUnknown', () {
    test('when deleted', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeleteUnknown: (data) {
          expect(data, isA<RepoCommitDelete>());

          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.dummy/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isTrue);
    });

    test('when not deleted', () async {
      bool result = false;

      final adaptor = RepoCommitAdaptor(
        onDeleteUnknown: (data) {
          result = true;
        },
      );

      adaptor.execute(
        _buildSubscribedRepoCommit(
          _buildDeleteRepoOp(
            'at://did:plc:cdlt5rimkun4avxokv7qoq4i/app.bsky.graph.listitem/3k27u2pzoly2q',
          ),
        ),
      );

      expect(result, isFalse);
    });
  });
}

SyncSubscribeReposCommit _buildSubscribedRepoCommit(
  final SyncSubscribeReposRepoOp op,
) =>
    SyncSubscribeReposCommit(
      ops: [op],
      repo: 'aaaaaaa',
      seq: 1234,
      rev: 'xxxxxxx',
      rebase: false,
      tooBig: false,
      time: DateTime.now(),
    );

SyncSubscribeReposRepoOp _buildCreateRepoOp(
  final String uri,
  final Map<String, dynamic> record,
) =>
    SyncSubscribeReposRepoOp(
      action: SyncSubscribeReposRepoOpAction.create,
      uri: AtUri.parse(uri),
      cid: 'aaaa',
      record: record,
    );

SyncSubscribeReposRepoOp _buildUpdateRepoOp(
  final String uri,
  final Map<String, dynamic> record,
) =>
    SyncSubscribeReposRepoOp(
      action: SyncSubscribeReposRepoOpAction.update,
      uri: AtUri.parse(uri),
      cid: 'aaaa',
      record: record,
    );

SyncSubscribeReposRepoOp _buildDeleteRepoOp(
  final String uri,
) =>
    SyncSubscribeReposRepoOp(
      action: SyncSubscribeReposRepoOpAction.delete,
      uri: AtUri.parse(uri),
    );
