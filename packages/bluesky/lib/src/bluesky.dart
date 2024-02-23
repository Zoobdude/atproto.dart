// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:atproto/atproto.dart' as atp;
import 'package:atproto_core/atproto_core.dart' as core;

// 🌎 Project imports:
import 'services/actor_service.dart';
import 'services/feed_service.dart';
import 'services/graph_service.dart';
import 'services/notification_service.dart';
import 'services/service_context.dart';
import 'services/unspecced_service.dart';

/// Provides `app.bsky.*` services.
sealed class Bluesky {
  /// Returns the new instance of [Bluesky].
  factory Bluesky.fromSession(
    final atp.Session session, {
    final core.Protocol? protocol,
    final String? service,
    final String? relayService,
    final Duration? timeout,
    final core.RetryConfig? retryConfig,
    final core.GetClient? mockedGetClient,
    final core.PostClient? mockedPostClient,
  }) =>
      _Bluesky(
        BlueskyServiceContext(
          atproto: atp.ATProto.fromSession(
            session,
            protocol: protocol,
            service: service,
            relayService: relayService,
            timeout: timeout,
            retryConfig: retryConfig,
            mockedGetClient: mockedGetClient,
            mockedPostClient: mockedPostClient,
          ),
          protocol: protocol,
          service: service,
          relayService: relayService,
          session: session,
          timeout: timeout,
          retryConfig: retryConfig,
          mockedGetClient: mockedGetClient,
          mockedPostClient: mockedPostClient,
        ),
      );

  /// Returns the new instance of [Bluesky] as anonymous.
  factory Bluesky.anonymous({
    final core.Protocol? protocol,
    final String? service,
    final String? relayService,
    final Duration? timeout,
    final core.RetryConfig? retryConfig,
    final core.GetClient? mockedGetClient,
    final core.PostClient? mockedPostClient,
  }) =>
      _Bluesky(
        BlueskyServiceContext(
          atproto: atp.ATProto.anonymous(
            protocol: protocol,
            service: service,
            relayService: relayService,
            timeout: timeout,
            retryConfig: retryConfig,
            mockedGetClient: mockedGetClient,
            mockedPostClient: mockedPostClient,
          ),
          protocol: protocol,
          service: service,
          relayService: relayService,
          timeout: timeout,
          retryConfig: retryConfig,
          mockedGetClient: mockedGetClient,
          mockedPostClient: mockedPostClient,
        ),
      );

  /// Returns the current session.
  ///
  /// Set only if an instance of this object was created in
  /// [Bluesky.fromSession], otherwise null.
  core.Session? get session;

  /// Returns the current service.
  /// Defaults to `bsky.social`.
  String get service;

  /// Returns the current replay service.
  /// Defaults to `bsky.network`.
  String get relayService;

  /// Returns the actor service.
  /// This service represents `app.bsky.actor.*`.
  @Deprecated('Use .actor instead. Will be removed')
  ActorService get actors;

  /// Returns the actor service.
  /// This service represents `app.bsky.actor.*`.
  ActorService get actor;

  /// Returns the feed service.
  /// This service represents `app.bsky.feed.*`.
  @Deprecated('Use .feed instead. Will be removed')
  FeedService get feeds;

  /// Returns the feed service.
  /// This service represents `app.bsky.feed.*`.
  FeedService get feed;

  /// Returns the notification service.
  /// This service represents `app.bsky.notification.*`.
  @Deprecated('Use .notification instead. Will be removed')
  NotificationService get notifications;

  /// Returns the notification service.
  /// This service represents `app.bsky.notification.*`.
  NotificationService get notification;

  /// Returns the graph service.
  /// This service represents `app.bsky.graph.*`.
  @Deprecated('Use .graph instead. Will be removed')
  GraphService get graphs;

  /// Returns the graph service.
  /// This service represents `app.bsky.graph.*`.
  GraphService get graph;

  /// Returns the unspecced service.
  /// This service represents `app.bsky.unspecced.*`.
  UnspeccedService get unspecced;

  /// Returns the server service.
  /// This service represents `com.atproto.server.*`.
  @Deprecated('Use .server instead. Will be removed')
  atp.ServerService get servers;

  /// Returns the server service.
  /// This service represents `com.atproto.server.*`.
  atp.ServerService get server;

  /// Returns the identity service.
  /// This service represents `com.atproto.identity.*`.
  @Deprecated('Use .identity instead. Will be removed')
  atp.IdentityService get identities;

  /// Returns the identity service.
  /// This service represents `com.atproto.identity.*`.
  atp.IdentityService get identity;

  /// Returns the repo service.
  /// This service represents `com.atproto.repo.*`.
  @Deprecated('Use .repo instead. Will be removed')
  atp.RepoService get repositories;

  /// Returns the repo service.
  /// This service represents `com.atproto.repo.*`.
  atp.RepoService get repo;

  /// Returns the moderation service.
  /// This service represents `com.atproto.moderation.*`.
  atp.ModerationService get moderation;

  /// Returns the sync service.
  /// This service represents `com.atproto.sync.*`.
  atp.SyncService get sync;

  /// Returns the label service.
  /// This service represents `com.atproto.label.*`.
  @Deprecated('Use .repo label. Will be removed')
  atp.LabelService get labels;

  /// Returns the label service.
  /// This service represents `com.atproto.label.*`.
  atp.LabelService get label;

  /// Returns the temp service.
  /// This service represents `com.atproto.temp.*`.
  atp.TempService get temp;

  /// Returns the result of executing [methodId] as GET communication.
  ///
  /// You can specify `Map<String, dynamic>`, `Uint8List`, or `EmptyData` as
  /// generics. If a [to] parameter is specified to convert the response body
  /// to a specific object, the generics need not be specified.
  ///
  /// - [methodId]: name of method to execute in XRPC.
  /// - [headers]: optional header information to be added to the request.
  /// - [parameters]: arguments passed to [methodId].
  /// - [to]: optional builder to convert the body of the response to a specific
  ///         object.
  /// - [adaptor]: optional adapters to convert response bodies to a specific
  ///              structure.
  Future<core.XRPCResponse<T>> get<T>(
    final core.NSID methodId, {
    final Map<String, String>? headers,
    final Map<String, dynamic>? parameters,
    final core.ResponseDataBuilder<T>? to,
    final core.ResponseDataAdaptor? adaptor,
  });

  /// Returns the result of executing [methodId] as POST communication.
  ///
  /// You can specify `Map<String, dynamic>`, `Uint8List`, or `EmptyData` as
  /// generics. If a [to] parameter is specified to convert the response body
  /// to a specific object, the generics need not be specified.
  ///
  /// - [methodId]: name of method to execute in XRPC.
  /// - [headers]: optional header information to be added to the request.
  /// - [parameters]: query parameters passed to [methodId].
  /// - [body]: data passed to [methodId].
  /// - [to]: optional builder to convert the body of the response to a specific
  ///         object.
  Future<core.XRPCResponse<T>> post<T>(
    final core.NSID methodId, {
    final Map<String, String>? headers,
    final Map<String, dynamic>? parameters,
    final dynamic body,
    final core.ResponseDataBuilder<T>? to,
  });
}

final class _Bluesky implements Bluesky {
  _Bluesky(final BlueskyServiceContext ctx)
      : actor = ActorService(ctx),
        feed = FeedService(ctx),
        notification = NotificationService(ctx),
        graph = GraphService(ctx),
        unspecced = UnspeccedService(ctx),
        server = ctx.atproto.server,
        identity = ctx.atproto.identity,
        repo = ctx.atproto.repo,
        moderation = ctx.atproto.moderation,
        sync = ctx.atproto.sync,
        label = ctx.atproto.label,
        temp = ctx.atproto.temp,
        _ctx = ctx;

  @override
  core.Session? get session => _ctx.session;

  @override
  String get service => _ctx.service;

  @override
  String get relayService => _ctx.relayService;

  @override
  final ActorService actor;

  @override
  ActorService get actors => actor;

  @override
  final FeedService feed;

  @override
  FeedService get feeds => feed;

  @override
  final NotificationService notification;

  @override
  NotificationService get notifications => notification;

  @override
  final GraphService graph;

  @override
  GraphService get graphs => graph;

  @override
  final UnspeccedService unspecced;

  @override
  final atp.ServerService server;

  @override
  atp.ServerService get servers => server;

  @override
  final atp.IdentityService identity;

  @override
  atp.IdentityService get identities => identity;

  @override
  final atp.RepoService repo;

  @override
  atp.RepoService get repositories => repo;

  @override
  final atp.ModerationService moderation;

  @override
  final atp.SyncService sync;

  @override
  final atp.LabelService label;

  @override
  atp.LabelService get labels => label;

  @override
  final atp.TempService temp;

  final core.ServiceContext _ctx;

  @override
  Future<core.XRPCResponse<T>> get<T>(
    final core.NSID methodId, {
    final Map<String, String>? headers,
    final Map<String, dynamic>? parameters,
    final core.ResponseDataBuilder<T>? to,
    final core.ResponseDataAdaptor? adaptor,
  }) async =>
      await _ctx.get(
        methodId,
        headers: headers,
        parameters: parameters,
        to: to,
        adaptor: adaptor,
      );

  @override
  Future<core.XRPCResponse<T>> post<T>(
    final core.NSID methodId, {
    final Map<String, String>? headers,
    final Map<String, dynamic>? parameters,
    final dynamic body,
    final core.ResponseDataBuilder<T>? to,
  }) async =>
      await _ctx.post(
        methodId,
        headers: headers,
        parameters: parameters,
        body: body,
        to: to,
      );
}
