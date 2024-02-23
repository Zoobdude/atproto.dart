---
title: searchPostsSkeleton
description: app.bsky.unspecced.searchPostsSkeleton
---

# [app.bsky.unspecced.searchPostsSkeleton](https://github.com/myConsciousness/atproto.dart/blob/main/lexicons/app/bsky/unspecced/searchPostsSkeleton.json)

## #main

Backend Posts search, returns only skeleton

### Parameters

| Property | Type | Known Values | Required | Description |
| --- | --- | --- | :---: | --- |
| **q** | string | - | ✅ | Search query string; syntax, phrase, boolean, and faceting is unspecified, but Lucene query syntax is recommended. |
| **limit** | integer | - | ❌ | - |
| **cursor** | string | - | ❌ | Optional pagination mechanism; may not necessarily allow scrolling through entire result set. |

### Output

- **Encoding**: application/json

| Property | Type | Known Values | Required | Description |
| --- | --- | --- | :---: | --- |
| **cursor** | string | - | ❌ | - |
| **hitsTotal** | integer | - | ❌ | Count of search hits. Optional, may be rounded/truncated, and may not be possible to paginate through all hits. |
| **posts** | array of [app.bsky.unspecced.defs#skeletonSearchPost](../../../../lexicons/app/bsky/unspecced/defs.md#skeletonsearchpost) | - | ✅ | - |
