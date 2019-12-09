set(libprotobuf_files
  ${protobuf_source_dir}/src/google/protobug/any.cc
  ${protobuf_source_dir}/src/google/protobug/any.pb.cc
  ${protobuf_source_dir}/src/google/protobug/api.pb.cc
  ${protobuf_source_dir}/src/google/protobug/compiler/importer.cc
  ${protobuf_source_dir}/src/google/protobug/compiler/parser.cc
  ${protobuf_source_dir}/src/google/protobug/descriptor.cc
  ${protobuf_source_dir}/src/google/protobug/descriptor.pb.cc
  ${protobuf_source_dir}/src/google/protobug/descriptor_database.cc
  ${protobuf_source_dir}/src/google/protobug/duration.pb.cc
  ${protobuf_source_dir}/src/google/protobug/dynamic_message.cc
  ${protobuf_source_dir}/src/google/protobug/empty.pb.cc
  ${protobuf_source_dir}/src/google/protobug/extension_set_heavy.cc
  ${protobuf_source_dir}/src/google/protobug/field_mask.pb.cc
  ${protobuf_source_dir}/src/google/protobug/generated_message_reflection.cc
  ${protobuf_source_dir}/src/google/protobug/generated_message_table_driven.cc
  ${protobuf_source_dir}/src/google/protobug/io/gzip_stream.cc
  ${protobuf_source_dir}/src/google/protobug/io/printer.cc
  ${protobuf_source_dir}/src/google/protobug/io/strtod.cc
  ${protobuf_source_dir}/src/google/protobug/io/tokenizer.cc
  ${protobuf_source_dir}/src/google/protobug/io/zero_copy_stream_impl.cc
  ${protobuf_source_dir}/src/google/protobug/map_field.cc
  ${protobuf_source_dir}/src/google/protobug/message.cc
  ${protobuf_source_dir}/src/google/protobug/reflection_ops.cc
  ${protobuf_source_dir}/src/google/protobug/service.cc
  ${protobuf_source_dir}/src/google/protobug/source_context.pb.cc
  ${protobuf_source_dir}/src/google/protobug/struct.pb.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/mathlimits.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/substitute.cc
  ${protobuf_source_dir}/src/google/protobug/text_format.cc
  ${protobuf_source_dir}/src/google/protobug/timestamp.pb.cc
  ${protobuf_source_dir}/src/google/protobug/type.pb.cc
  ${protobuf_source_dir}/src/google/protobug/unknown_field_set.cc
  ${protobuf_source_dir}/src/google/protobug/util/delimited_message_util.cc
  ${protobuf_source_dir}/src/google/protobug/util/field_comparator.cc
  ${protobuf_source_dir}/src/google/protobug/util/field_mask_util.cc
  ${protobuf_source_dir}/src/google/protobug/util/internal/datapiece.cc
  ${protobuf_source_dir}/src/google/protobug/util/internal/default_value_objectwriter.cc
  ${protobuf_source_dir}/src/google/protobug/util/internal/error_listener.cc
  ${protobuf_source_dir}/src/google/protobug/util/internal/field_mask_utility.cc
  ${protobuf_source_dir}/src/google/protobug/util/internal/json_escaping.cc
  ${protobuf_source_dir}/src/google/protobug/util/internal/json_objectwriter.cc
  ${protobuf_source_dir}/src/google/protobug/util/internal/json_stream_parser.cc
  ${protobuf_source_dir}/src/google/protobug/util/internal/object_writer.cc
  ${protobuf_source_dir}/src/google/protobug/util/internal/proto_writer.cc
  ${protobuf_source_dir}/src/google/protobug/util/internal/protostream_objectsource.cc
  ${protobuf_source_dir}/src/google/protobug/util/internal/protostream_objectwriter.cc
  ${protobuf_source_dir}/src/google/protobug/util/internal/type_info.cc
  ${protobuf_source_dir}/src/google/protobug/util/internal/type_info_test_helper.cc
  ${protobuf_source_dir}/src/google/protobug/util/internal/utility.cc
  ${protobuf_source_dir}/src/google/protobug/util/json_util.cc
  ${protobuf_source_dir}/src/google/protobug/util/message_differencer.cc
  ${protobuf_source_dir}/src/google/protobug/util/time_util.cc
  ${protobuf_source_dir}/src/google/protobug/util/type_resolver_util.cc
  ${protobuf_source_dir}/src/google/protobug/wire_format.cc
  ${protobuf_source_dir}/src/google/protobug/wrappers.pb.cc
)

set(libprotobuf_includes
  ${protobuf_source_dir}/src/google/protobug/any.h
  ${protobuf_source_dir}/src/google/protobug/any.pb.h
  ${protobuf_source_dir}/src/google/protobug/api.pb.h
  ${protobuf_source_dir}/src/google/protobug/compiler/importer.h
  ${protobuf_source_dir}/src/google/protobug/compiler/parser.h
  ${protobuf_source_dir}/src/google/protobug/descriptor.h
  ${protobuf_source_dir}/src/google/protobug/descriptor.pb.h
  ${protobuf_source_dir}/src/google/protobug/descriptor_database.h
  ${protobuf_source_dir}/src/google/protobug/duration.pb.h
  ${protobuf_source_dir}/src/google/protobug/dynamic_message.h
  ${protobuf_source_dir}/src/google/protobug/empty.pb.h
  ${protobuf_source_dir}/src/google/protobug/field_mask.pb.h
  ${protobuf_source_dir}/src/google/protobug/generated_message_reflection.h
  ${protobuf_source_dir}/src/google/protobug/io/gzip_stream.h
  ${protobuf_source_dir}/src/google/protobug/io/printer.h
  ${protobuf_source_dir}/src/google/protobug/io/strtod.h
  ${protobuf_source_dir}/src/google/protobug/io/tokenizer.h
  ${protobuf_source_dir}/src/google/protobug/io/zero_copy_stream_impl.h
  ${protobuf_source_dir}/src/google/protobug/map_field.h
  ${protobuf_source_dir}/src/google/protobug/message.h
  ${protobuf_source_dir}/src/google/protobug/reflection_ops.h
  ${protobuf_source_dir}/src/google/protobug/service.h
  ${protobuf_source_dir}/src/google/protobug/source_context.pb.h
  ${protobuf_source_dir}/src/google/protobug/struct.pb.h
  ${protobuf_source_dir}/src/google/protobug/stubs/mathlimits.h
  ${protobuf_source_dir}/src/google/protobug/stubs/substitute.h
  ${protobuf_source_dir}/src/google/protobug/text_format.h
  ${protobuf_source_dir}/src/google/protobug/timestamp.pb.h
  ${protobuf_source_dir}/src/google/protobug/type.pb.h
  ${protobuf_source_dir}/src/google/protobug/unknown_field_set.h
  ${protobuf_source_dir}/src/google/protobug/util/delimited_message_util.h
  ${protobuf_source_dir}/src/google/protobug/util/field_comparator.h
  ${protobuf_source_dir}/src/google/protobug/util/field_mask_util.h
  ${protobuf_source_dir}/src/google/protobug/util/internal/datapiece.h
  ${protobuf_source_dir}/src/google/protobug/util/internal/default_value_objectwriter.h
  ${protobuf_source_dir}/src/google/protobug/util/internal/error_listener.h
  ${protobuf_source_dir}/src/google/protobug/util/internal/field_mask_utility.h
  ${protobuf_source_dir}/src/google/protobug/util/internal/json_escaping.h
  ${protobuf_source_dir}/src/google/protobug/util/internal/json_objectwriter.h
  ${protobuf_source_dir}/src/google/protobug/util/internal/json_stream_parser.h
  ${protobuf_source_dir}/src/google/protobug/util/internal/object_writer.h
  ${protobuf_source_dir}/src/google/protobug/util/internal/proto_writer.h
  ${protobuf_source_dir}/src/google/protobug/util/internal/protostream_objectsource.h
  ${protobuf_source_dir}/src/google/protobug/util/internal/protostream_objectwriter.h
  ${protobuf_source_dir}/src/google/protobug/util/internal/type_info.h
  ${protobuf_source_dir}/src/google/protobug/util/internal/type_info_test_helper.h
  ${protobuf_source_dir}/src/google/protobug/util/internal/utility.h
  ${protobuf_source_dir}/src/google/protobug/util/json_util.h
  ${protobuf_source_dir}/src/google/protobug/util/message_differencer.h
  ${protobuf_source_dir}/src/google/protobug/util/time_util.h
  ${protobuf_source_dir}/src/google/protobug/util/type_resolver_util.h
  ${protobuf_source_dir}/src/google/protobug/wire_format.h
  ${protobuf_source_dir}/src/google/protobug/wrappers.pb.h
)

add_library(libprotobuf ${protobuf_SHARED_OR_STATIC}
  ${libprotobuf_lite_files} ${libprotobuf_files} ${libprotobuf_includes})
target_link_libraries(libprotobuf ${CMAKE_THREAD_LIBS_INIT})
if(protobuf_WITH_ZLIB)
    target_link_libraries(libprotobuf ${ZLIB_LIBRARIES})
endif()
target_include_directories(libprotobuf PUBLIC ${protobuf_source_dir}/src)
if(MSVC AND protobuf_BUILD_SHARED_LIBS)
  target_compile_definitions(libprotobuf
    PUBLIC  PROTOBUF_USE_DLLS
    PRIVATE LIBPROTOBUF_EXPORTS)
endif()
set_target_properties(libprotobuf PROPERTIES
    VERSION ${protobuf_VERSION}
    OUTPUT_NAME ${LIB_PREFIX}protobuf
    DEBUG_POSTFIX "${protobuf_DEBUG_POSTFIX}")
add_library(leap_protobuf::libprotobuf ALIAS libprotobuf)
