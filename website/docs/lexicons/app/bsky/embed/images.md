---
title: images
description: app.bsky.embed.images
---

# [app.bsky.embed.images](https://github.com/myConsciousness/atproto.dart/blob/main/lexicons/app/bsky/embed/images.json)

## #main

| Property | Type | Known Values | Required | Description |
| --- | --- | --- | :---: | --- |
| **images** | array of [#image](#image) | - | ✅ | - |

## #image

| Property | Type | Known Values | Required | Description |
| --- | --- | --- | :---: | --- |
| **image** | [blob](https://atproto.com/specs/data-model#blob-type) | - | ✅ | - |
| **alt** | string | - | ✅ | Alt text description of the image, for accessibility. |
| **aspectRatio** | [#aspectRatio](#aspectratio) | - | ❌ | - |

## #aspectRatio

width:height represents an aspect ratio. It may be approximate, and may not correspond to absolute dimensions in any given unit.

| Property | Type | Known Values | Required | Description |
| --- | --- | --- | :---: | --- |
| **width** | integer | - | ✅ | - |
| **height** | integer | - | ✅ | - |

## #view

| Property | Type | Known Values | Required | Description |
| --- | --- | --- | :---: | --- |
| **images** | array of [#viewImage](#viewimage) | - | ✅ | - |

## #viewImage

| Property | Type | Known Values | Required | Description |
| --- | --- | --- | :---: | --- |
| **thumb** | string | - | ✅ | Fully-qualified URL where a thumbnail of the image can be fetched. For example, CDN location provided by the App View. |
| **fullsize** | string | - | ✅ | Fully-qualified URL where a large version of the image can be fetched. May or may not be the exact original blob. For example, CDN location provided by the App View. |
| **alt** | string | - | ✅ | Alt text description of the image, for accessibility. |
| **aspectRatio** | [#aspectRatio](#aspectratio) | - | ❌ | - |
