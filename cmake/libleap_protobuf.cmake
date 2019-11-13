set(libleap_protobuf_files
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/any.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/any.pb.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/api.pb.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/importer.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/parser.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/descriptor.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/descriptor.pb.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/descriptor_database.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/duration.pb.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/dynamic_message.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/empty.pb.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/extension_set_heavy.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/field_mask.pb.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/generated_message_reflection.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/generated_message_table_driven.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/io/gzip_stream.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/io/printer.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/io/strtod.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/io/tokenizer.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/io/zero_copy_stream_impl.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/map_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/message.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/reflection_ops.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/service.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/source_context.pb.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/struct.pb.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/mathlimits.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/substitute.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/text_format.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/timestamp.pb.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/type.pb.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/unknown_field_set.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/delimited_message_util.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/field_comparator.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/field_mask_util.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/datapiece.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/default_value_objectwriter.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/error_listener.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/field_mask_utility.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/json_escaping.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/json_objectwriter.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/json_stream_parser.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/object_writer.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/proto_writer.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/protostream_objectsource.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/protostream_objectwriter.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/type_info.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/type_info_test_helper.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/utility.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/json_util.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/message_differencer.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/time_util.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/type_resolver_util.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/wire_format.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/wrappers.pb.cc
)

set(libleap_protobuf_includes
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/any.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/any.pb.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/api.pb.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/importer.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/parser.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/descriptor.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/descriptor.pb.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/descriptor_database.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/duration.pb.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/dynamic_message.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/empty.pb.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/field_mask.pb.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/generated_message_reflection.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/io/gzip_stream.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/io/printer.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/io/strtod.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/io/tokenizer.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/io/zero_copy_stream_impl.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/map_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/message.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/reflection_ops.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/service.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/source_context.pb.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/struct.pb.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/mathlimits.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/stubs/substitute.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/text_format.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/timestamp.pb.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/type.pb.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/unknown_field_set.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/delimited_message_util.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/field_comparator.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/field_mask_util.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/datapiece.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/default_value_objectwriter.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/error_listener.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/field_mask_utility.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/json_escaping.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/json_objectwriter.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/json_stream_parser.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/object_writer.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/proto_writer.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/protostream_objectsource.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/protostream_objectwriter.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/type_info.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/type_info_test_helper.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/internal/utility.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/json_util.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/message_differencer.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/time_util.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/util/type_resolver_util.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/wire_format.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/wrappers.pb.h
)

add_library(libleap_protobuf ${leap_protobuf_SHARED_OR_STATIC}
  ${libleap_protobuf_lite_files} ${libleap_protobuf_files} ${libleap_protobuf_includes})
target_link_libraries(libleap_protobuf ${CMAKE_THREAD_LIBS_INIT})
if(leap_protobuf_WITH_ZLIB)
    target_link_libraries(libleap_protobuf ${ZLIB_LIBRARIES})
endif()
target_include_directories(libleap_protobuf PUBLIC ${leap_protobuf_source_dir}/src)
if(MSVC AND leap_protobuf_BUILD_SHARED_LIBS)
  target_compile_definitions(libleap_protobuf
    PUBLIC  PROTOBUF_USE_DLLS
    PRIVATE LIBPROTOBUF_EXPORTS)
endif()
set_target_properties(libleap_protobuf PROPERTIES
    VERSION ${leap_protobuf_VERSION}
    OUTPUT_NAME ${LIB_PREFIX}protobuf
    DEBUG_POSTFIX "${leap_protobuf_DEBUG_POSTFIX}")
add_library(protobuf::libleap_protobuf ALIAS libleap_protobuf)
