set(libprotoc_files
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/code_generator.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/command_line_interface.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_enum.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_enum_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_extension.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_file.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_generator.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_helpers.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_map_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_message.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_message_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_padding_optimizer.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_primitive_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_service.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_string_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_doc_comment.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_enum.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_enum_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_field_base.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_generator.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_helpers.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_map_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_message.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_message_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_primitive_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_reflection_class.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_repeated_enum_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_repeated_message_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_repeated_primitive_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_source_generator_base.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_wrapper_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_context.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_doc_comment.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_enum.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_enum_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_enum_field_lite.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_enum_lite.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_extension.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_extension_lite.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_file.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_generator.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_generator_factory.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_helpers.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_lazy_message_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_lazy_message_field_lite.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_map_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_map_field_lite.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_message.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_message_builder.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_message_builder_lite.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_message_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_message_field_lite.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_message_lite.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_name_resolver.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_primitive_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_primitive_field_lite.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_service.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_shared_code_generator.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_string_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_string_field_lite.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/js/js_generator.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/js/well_known_types_embed.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_enum.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_enum_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_extension.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_file.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_generator.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_helpers.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_map_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_message.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_message_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_oneof.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_primitive_field.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/php/php_generator.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/plugin.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/plugin.pb.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/python/python_generator.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/ruby/ruby_generator.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/subprocess.cc
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/zip_writer.cc
)

set(libprotoc_headers
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_enum.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_enum_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_extension.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_file.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_helpers.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_map_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_message.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_message_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_message_layout_helper.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_options.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_padding_optimizer.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_primitive_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_service.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_string_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_doc_comment.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_enum.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_enum_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_field_base.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_helpers.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_map_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_message.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_message_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_options.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_primitive_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_reflection_class.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_repeated_enum_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_repeated_message_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_repeated_primitive_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_source_generator_base.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_wrapper_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_context.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_doc_comment.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_enum.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_enum_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_enum_field_lite.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_enum_lite.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_extension.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_extension_lite.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_file.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_generator_factory.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_helpers.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_lazy_message_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_lazy_message_field_lite.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_map_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_map_field_lite.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_message.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_message_builder.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_message_builder_lite.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_message_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_message_field_lite.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_message_lite.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_name_resolver.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_options.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_primitive_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_primitive_field_lite.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_service.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_shared_code_generator.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_string_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_string_field_lite.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_enum.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_enum_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_extension.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_file.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_helpers.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_map_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_message.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_message_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_oneof.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_primitive_field.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/subprocess.h
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/zip_writer.h
)

set(js_well_known_types_sources
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/js/well_known_types/any.js
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/js/well_known_types/struct.js
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/js/well_known_types/timestamp.js
)
add_executable(js_embed ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/js/embed.cc)
add_custom_command(
  OUTPUT ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/js/well_known_types_embed.cc
  DEPENDS js_embed ${js_well_known_types_sources}
  COMMAND js_embed ${js_well_known_types_sources} > ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/js/well_known_types_embed.cc
)

add_library(libprotoc ${leap_protobuf_SHARED_OR_STATIC}
  ${libprotoc_files} ${libprotoc_headers})
target_link_libraries(libprotoc libleap_protobuf)
if(MSVC AND leap_protobuf_BUILD_SHARED_LIBS)
  target_compile_definitions(libprotoc
    PUBLIC  PROTOBUF_USE_DLLS
    PRIVATE LIBPROTOC_EXPORTS)
endif()
set_target_properties(libprotoc PROPERTIES
    COMPILE_DEFINITIONS LIBPROTOC_EXPORTS
    VERSION ${leap_protobuf_VERSION}
    OUTPUT_NAME ${LIB_PREFIX}protoc
    DEBUG_POSTFIX "${leap_protobuf_DEBUG_POSTFIX}")
add_library(leap_protobuf::libprotoc ALIAS libprotoc)
