// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

/// This pattern identifies two main groups of characters:
///
/// 1. Characters outside the surrogate pair range (`[^\uD800-\uDFFF]`).
///    This includes most of the Basic Multilingual Plane (BMP) characters,
///    except surrogate pairs.
///
/// 2. Valid surrogate pairs (`[\uD800-\uDBFF][\uDC00-\uDFFF]`).
///    In UTF-16 encoding, a surrogate pair is composed of a high
///    surrogate (`\uD800-\uDBFF`) followed by a low surrogate
///    (`\uDC00-\uDFFF`). This combination represents characters
///    outside the BMP, especially those from the Supplementary Multilingual
///    Plane (SMP).
///
/// Use this pattern to safely iterate over strings containing both BMP and SMP
/// characters without breaking apart valid surrogate pairs.
const codePoint = r'(?:[^\uD800-\uDFFF]|[\uD800-\uDBFF][\uDC00-\uDFFF])';
