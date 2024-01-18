// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../../ids.dart';
import '../../lex_annotations.g.dart' as lex;
import 'image_aspect_ratio.dart';

part 'embed_view_images_view.freezed.dart';
part 'embed_view_images_view.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/embed/images#viewimage
@freezed
@lex.appBskyEmbedImagesViewImage
@Deprecated('Use EmbedImagesViewImage instead. Will be removed')
class EmbedViewImagesView with _$EmbedViewImagesView {
  const factory EmbedViewImagesView({
    @typeKey @Default(appBskyEmbedImagesViewImage) String type,
    @JsonKey(name: 'thumb') required String thumbnail,
    required String fullsize,
    required String alt,
    ImageAspectRatio? aspectRatio,
  }) = _EmbedViewImagesView;

  /// Creates an instance of [EmbedViewImagesView] from a map of
  /// [String, Object?].
  ///
  /// This factory constructor is used for deserializing JSON data into an
  /// [EmbedViewImagesView] object.
  ///
  /// The `json` parameter is a map containing the serialized data.
  factory EmbedViewImagesView.fromJson(Map<String, Object?> json) =>
      _$EmbedViewImagesViewFromJson(json);
}
