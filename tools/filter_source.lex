%{
//
// filter_source.lex - apply to all text files
//
// Richard Cownie, Ultraleap, 2019-12-03
//
#include <stdio.h>
#include <string.h>

//
// Apply these global edits to all text files:
//
//  - change "google/protobuf"    to "google/protobug"
//  - change "google.protobuf"    to "google.protobug"
//  - change "namespace protobuf" to "namespace protobug"
//  - change "::protobuf"         to "::protobug"
//  - change "GOOGLE_PROTOBUF"    to "GOOGLE_PROTOBUG"
//
// These changes must preserve string length, which is essential because
// there are string literals containing binary-encoded protobuf data
// with encoded string lengths.
//
// A further complication is that strings may be split into multiple
// string literals, with the pattern crossing a boundary, e.g.
//   "foobar/prot"
//   "obuf/whatever"
//

%}

B   (\"[ \t\n]+\")?

%%
protobu[fg]\_go            { printf("protobuf_go"); }
protobuf\_Assign           { printf("protobug_Assign"); }
protobuf\_unittest         { printf("protobug_unittest"); }
ogle\_2fprotobuf           { printf("ogle_2fprotobug"); }
\:\:[ \t]*protobuf         { printf("::protobug"); }
GOOGLE\_PROTOBUF           { printf("GOOGLE_PROTOBUG"); }
PROTOBUF\_DEPRECATE        { printf("PROTOBUG_DEPRECATE"); }
\(protobuf\:\:             { printf("(leap_protobuf::"); }
\ protobuf\:\:             { printf(" leap_protobuf::"); }
google\\protobuf           { printf("google\\protobug"); }
g{B}o{B}o{B}g{B}l{B}e{B}\/{B}p{B}r{B}o{B}t{B}o{B}b{B}u{B}f {
  printf("google/protobug");
}
g{B}o{B}o{B}g{B}l{B}e{B}\.{B}p{B}r{B}o{B}t{B}o{B}b{B}u{B}f {
  printf("google.protobug");
}
[^\n]                      { ECHO; }
\n                         { ECHO; }
%%
