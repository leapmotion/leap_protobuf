set(libleap_protobuf_lite_files
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/arena.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/arenastring.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/extension_set.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/generated_message_table_driven_lite.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/generated_message_util.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/implicit_weak_message.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/io/coded_stream.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/io/zero_copy_stream.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/io/zero_copy_stream_impl_lite.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/message_lite.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/repeated_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/bytestream.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/common.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/int128.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/io_win32.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/status.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/statusor.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/stringpiece.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/stringprintf.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/structurally_valid.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/strutil.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/time.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/wire_format_lite.cc
)

set(libleap_protobuf_lite_includes
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/arena.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/arenastring.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/extension_set.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/generated_message_util.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/implicit_weak_message.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/io/coded_stream.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/io/zero_copy_stream.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/io/zero_copy_stream_impl_lite.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/message_lite.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/repeated_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/bytestream.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/common.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/int128.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/once.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/status.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/statusor.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/stringpiece.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/stringprintf.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/strutil.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/time.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/wire_format_lite.h
)

add_library(libleap_protobuf-lite ${leap_protobuf_SHARED_OR_STATIC}
  ${libleap_protobuf_lite_files} ${libleap_protobuf_lite_includes})
target_link_libraries(libleap_protobuf-lite ${CMAKE_THREAD_LIBS_INIT})
target_include_directories(libleap_protobuf-lite PUBLIC ${leap_protobuf_source_dir}/src)
if(MSVC AND leap_protobuf_BUILD_SHARED_LIBS)
  target_compile_definitions(libleap_protobuf-lite
    PUBLIC  PROTOBUF_USE_DLLS
    PRIVATE LIBPROTOBUF_EXPORTS)
endif()
set_target_properties(libleap_protobuf-lite PROPERTIES
    VERSION ${leap_protobuf_VERSION}
    OUTPUT_NAME ${LIB_PREFIX}protobuf-lite
    DEBUG_POSTFIX "${leap_protobuf_DEBUG_POSTFIX}")
add_library(protobuf::libleap_protobuf-lite ALIAS libleap_protobuf-lite)
