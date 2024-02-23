// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:atproto/atproto.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:bluesky/src/bluesky.dart';
import 'package:bluesky/src/services/actor_service.dart';
import 'package:bluesky/src/services/feed_service.dart';
import 'package:bluesky/src/services/graph_service.dart';
import 'package:bluesky/src/services/notification_service.dart';
import 'package:bluesky/src/services/unspecced_service.dart';

void main() {
  group('.session', () {
    test('fromSession', () {
      final session = Session(
        did: 'aaaa',
        handle: 'bbbbb',
        accessJwt: 'cccccc',
        refreshJwt: 'ddddddd',
      );

      final atproto = ATProto.fromSession(session);

      expect(atproto.session != null, isTrue);
      expect(atproto.session, session);
    });

    test('anonymous', () {
      final atproto = ATProto.anonymous();

      expect(atproto.session == null, isTrue);
    });
  });

  test('.actor', () {
    final service = Bluesky.fromSession(Session(
      did: 'aaaa',
      handle: 'shinyakato.dev',
      accessJwt: 'test',
      refreshJwt: 'test',
    )).actor;

    expect(service, isA<ActorService>());
  });

  test('.feed', () {
    final service = Bluesky.fromSession(Session(
      did: 'aaaa',
      handle: 'shinyakato.dev',
      accessJwt: 'test',
      refreshJwt: 'test',
    )).feed;

    expect(service, isA<FeedService>());
  });

  test('.notification', () {
    final service = Bluesky.fromSession(Session(
      did: 'aaaa',
      handle: 'shinyakato.dev',
      accessJwt: 'test',
      refreshJwt: 'test',
    )).notification;

    expect(service, isA<NotificationService>());
  });

  test('.graph', () {
    final service = Bluesky.fromSession(Session(
      did: 'aaaa',
      handle: 'shinyakato.dev',
      accessJwt: 'test',
      refreshJwt: 'test',
    )).graph;

    expect(service, isA<GraphService>());
  });

  test('.unspecced', () {
    final service = Bluesky.fromSession(Session(
      did: 'aaaa',
      handle: 'shinyakato.dev',
      accessJwt: 'test',
      refreshJwt: 'test',
    )).unspecced;

    expect(service, isA<UnspeccedService>());
  });

  test('.server', () {
    final service = Bluesky.anonymous().server;

    expect(service, isA<ServerService>());
  });

  test('.identity', () {
    final service = Bluesky.anonymous().identity;

    expect(service, isA<IdentityService>());
  });

  test('.repo', () {
    final service = Bluesky.anonymous().repo;

    expect(service, isA<RepoService>());
  });

  test('.moderation', () {
    final service = Bluesky.fromSession(Session(
      did: 'aaaa',
      handle: 'shinyakato.dev',
      accessJwt: 'test',
      refreshJwt: 'test',
    )).moderation;

    expect(service, isA<ModerationService>());
  });

  test('.sync', () {
    final service = Bluesky.anonymous().sync;

    expect(service, isA<SyncService>());
  });

  test('.label', () {
    final service = Bluesky.anonymous().label;

    expect(service, isA<LabelService>());
  });

  group('.service', () {
    test('case1', () {
      final atproto = ATProto.anonymous();

      expect(atproto.service, 'bsky.social');
    });

    test('case2', () {
      final atproto = ATProto.anonymous(service: 'syu.is');

      expect(atproto.service, 'syu.is');
    });
  });

  group('.relayService', () {
    test('case1', () {
      final atproto = ATProto.anonymous();

      expect(atproto.relayService, 'bsky.network');
    });

    test('case2', () {
      final atproto = ATProto.anonymous(relayService: 'bgs.syu.is');

      expect(atproto.relayService, 'bgs.syu.is');
    });
  });
}
