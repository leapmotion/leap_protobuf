prefix=@CMAKE_INSTALL_PREFIX@
exec_prefix=@CMAKE_INSTALL_PREFIX@
libdir=@CMAKE_INSTALL_FULL_LIBDIR@
includedir=@CMAKE_INSTALL_FULL_INCLUDEDIR@

Name: Protocol Buffers
Description: Google's Data Interchange Format
Version: @leap_protobuf_VERSION@
Libs: -L${libdir} -lleap_protobuf @CMAKE_THREAD_LIBS_INIT@
Cflags: -I${includedir} @CMAKE_THREAD_LIBS_INIT@
Conflicts: leap_protobuf-lite
