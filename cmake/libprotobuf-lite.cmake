set(libprotobuf_lite_files
  ${protobuf_source_dir}/src/google/protobug/arena.cc
  ${protobuf_source_dir}/src/google/protobug/arenastring.cc
  ${protobuf_source_dir}/src/google/protobug/extension_set.cc
  ${protobuf_source_dir}/src/google/protobug/generated_message_table_driven_lite.cc
  ${protobuf_source_dir}/src/google/protobug/generated_message_util.cc
  ${protobuf_source_dir}/src/google/protobug/implicit_weak_message.cc
  ${protobuf_source_dir}/src/google/protobug/io/coded_stream.cc
  ${protobuf_source_dir}/src/google/protobug/io/zero_copy_stream.cc
  ${protobuf_source_dir}/src/google/protobug/io/zero_copy_stream_impl_lite.cc
  ${protobuf_source_dir}/src/google/protobug/message_lite.cc
  ${protobuf_source_dir}/src/google/protobug/repeated_field.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/bytestream.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/common.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/int128.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/io_win32.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/status.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/statusor.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/stringpiece.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/stringprintf.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/structurally_valid.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/strutil.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/time.cc
  ${protobuf_source_dir}/src/google/protobug/wire_format_lite.cc
)

set(libprotobuf_lite_includes
  ${protobuf_source_dir}/src/google/protobug/arena.h
  ${protobuf_source_dir}/src/google/protobug/arenastring.h
  ${protobuf_source_dir}/src/google/protobug/extension_set.h
  ${protobuf_source_dir}/src/google/protobug/generated_message_util.h
  ${protobuf_source_dir}/src/google/protobug/implicit_weak_message.h
  ${protobuf_source_dir}/src/google/protobug/io/coded_stream.h
  ${protobuf_source_dir}/src/google/protobug/io/zero_copy_stream.h
  ${protobuf_source_dir}/src/google/protobug/io/zero_copy_stream_impl_lite.h
  ${protobuf_source_dir}/src/google/protobug/message_lite.h
  ${protobuf_source_dir}/src/google/protobug/repeated_field.h
  ${protobuf_source_dir}/src/google/protobug/stubs/bytestream.h
  ${protobuf_source_dir}/src/google/protobug/stubs/common.h
  ${protobuf_source_dir}/src/google/protobug/stubs/int128.h
  ${protobuf_source_dir}/src/google/protobug/stubs/once.h
  ${protobuf_source_dir}/src/google/protobug/stubs/status.h
  ${protobuf_source_dir}/src/google/protobug/stubs/statusor.h
  ${protobuf_source_dir}/src/google/protobug/stubs/stringpiece.h
  ${protobuf_source_dir}/src/google/protobug/stubs/stringprintf.h
  ${protobuf_source_dir}/src/google/protobug/stubs/strutil.h
  ${protobuf_source_dir}/src/google/protobug/stubs/time.h
  ${protobuf_source_dir}/src/google/protobug/wire_format_lite.h
)

add_library(libprotobuf-lite ${protobuf_SHARED_OR_STATIC}
  ${libprotobuf_lite_files} ${libprotobuf_lite_includes})
target_link_libraries(libprotobuf-lite ${CMAKE_THREAD_LIBS_INIT})
target_include_directories(libprotobuf-lite PUBLIC ${protobuf_source_dir}/src)
if(MSVC AND protobuf_BUILD_SHARED_LIBS)
  target_compile_definitions(libprotobuf-lite
    PUBLIC  PROTOBUF_USE_DLLS
    PRIVATE LIBPROTOBUF_EXPORTS)
endif()
set_target_properties(libprotobuf-lite PROPERTIES
    VERSION ${protobuf_VERSION}
    OUTPUT_NAME ${LIB_PREFIX}protobuf-lite
    DEBUG_POSTFIX "${protobuf_DEBUG_POSTFIX}")
add_library(leap_protobuf::libprotobuf-lite ALIAS libprotobuf-lite)
