
leap_protobuf
=============

Richard Cownie, Ultraleap, 2020-01-03

This is a fork of the protobuf tag v3.6.0 which has been hacked
to change filenames and function/class/symbol names so that it can
coexist with a vanilla protobuf-3.7.1 (or other version, I hope).

The hacking mostly consists of changing "protobuf" to "protobug"
in various places - including some directory names, so that the
two sets of header files can coexist without confusion.

The hacked name has to have the same length as the original, because
some of the bootstrap files involve C++ strings containing pre-encoded
binary messages, with encoded string-lengths which must be unchanged.

Confusingly, the project name is still "protobuf", so that various
implicit variables such as ${protobuf_SOURCE_DIR} are defined.

If LeapMotion library directory is D:/Libraries_x64_vc141, then the
configuration settings would be:

  CMAKE_PREFIX_PATH="D:/Libraries-x64_vc141/zlib-1.2.8"
  CMAKE_INSTALL_PREFIX="D:/Libraries-x64_vc141/leap_protobuf-3.6.0"

WARNING: Windows Debug build doesn't work, do Release build only
(This shouldn't be a problem since AFAIK a Debug build of platform
 is too slow to be usable, or at least that was true in Dec 2018).
