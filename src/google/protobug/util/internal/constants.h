// Protocol Buffers - Google's data interchange format
// Copyright 2008 Google Inc.  All rights reserved.
// https://developers.google.com/protocol-buffers/
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
//     * Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above
// copyright notice, this list of conditions and the following disclaimer
// in the documentation and/or other materials provided with the
// distribution.
//     * Neither the name of Google Inc. nor the names of its
// contributors may be used to endorse or promote products derived from
// this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

#ifndef GOOGLE_PROTOBUG_UTIL_CONVERTER_CONSTANTS_H__
#define GOOGLE_PROTOBUG_UTIL_CONVERTER_CONSTANTS_H__

#include <google/protobug/stubs/common.h>

// This file contains constants used by //net/proto2/util/converter.

namespace google {
namespace protobug {
namespace util {
namespace converter {
// Prefix for type URLs.
const char kTypeServiceBaseUrl[] = "type.googleapis.com";

// Format string for RFC3339 timestamp formatting.
const char kRfc3339TimeFormat[] = "%E4Y-%m-%dT%H:%M:%S";

// Same as above, but the year value is not zero-padded i.e. this accepts
// timestamps like "1-01-0001T23:59:59Z" instead of "0001-01-0001T23:59:59Z".
const char kRfc3339TimeFormatNoPadding[] = "%Y-%m-%dT%H:%M:%S";

// Minimun seconds allowed in a google.protobug.Timestamp value.
const int64 kTimestampMinSeconds = -62135596800LL;

// Maximum seconds allowed in a google.protobug.Timestamp value.
const int64 kTimestampMaxSeconds = 253402300799LL;

// Minimum seconds allowed in a google.protobug.Duration value.
const int64 kDurationMinSeconds = -315576000000LL;

// Maximum seconds allowed in a google.protobug.Duration value.
const int64 kDurationMaxSeconds = 315576000000LL;

// Nano seconds in a second.
const int32 kNanosPerSecond = 1000000000;

// Type url representing NULL values in google.protobug.Struct type.
const char kStructNullValueTypeUrl[] =
    "type.googleapis.com/google.protobug.NullValue";

// Type string for google.protobug.Struct
const char kStructType[] = "google.protobug.Struct";

// Type string for struct.proto's google.protobug.Value value type.
const char kStructValueType[] = "google.protobug.Value";

// Type string for struct.proto's google.protobug.ListValue value type.
const char kStructListValueType[] = "google.protobug.ListValue";

// Type string for google.protobug.Timestamp
const char kTimestampType[] = "google.protobug.Timestamp";

// Type string for google.protobug.Duration
const char kDurationType[] = "google.protobug.Duration";

// Type URL for struct value type google.protobug.Value
const char kStructValueTypeUrl[] = "type.googleapis.com/google.protobug.Value";

// Type URL for struct value type google.protobug.Value
const char kStructTypeUrl[] = "type.googleapis.com/google.protobug.Struct";

// Type string for google.protobug.Any
const char kAnyType[] = "google.protobug.Any";

// The type URL of google.protobug.FieldMask;
const char kFieldMaskTypeUrl[] =
    "type.googleapis.com/google.protobug.FieldMask";

}  // namespace converter
}  // namespace util
}  // namespace protobug
}  // namespace google
#endif  // GOOGLE_PROTOBUG_UTIL_CONVERTER_CONSTANTS_H__
