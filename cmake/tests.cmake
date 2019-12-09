if (NOT EXISTS "${PROJECT_SOURCE_DIR}/../third_party/googletest/CMakeLists.txt")
  message(FATAL_ERROR
          "Cannot find third_party/googletest directory that's needed to "
          "build tests. If you use git, make sure you have cloned submodules:\n"
          "  git submodule update --init --recursive\n"
          "If instead you want to skip tests, run cmake with:\n"
          "  cmake -Dprotobuf_BUILD_TESTS=OFF\n")
endif()

option(protobuf_ABSOLUTE_TEST_PLUGIN_PATH
  "Using absolute test_plugin path in tests" ON)
mark_as_advanced(protobuf_ABSOLUTE_TEST_PLUGIN_PATH)

set(googlemock_source_dir "${protobuf_source_dir}/third_party/googletest/googlemock")
set(googletest_source_dir "${protobuf_source_dir}/third_party/googletest/googletest")
include_directories(
  ${googlemock_source_dir}
  ${googletest_source_dir}
  ${googletest_source_dir}/include
  ${googlemock_source_dir}/include
)

add_library(gmock STATIC
  "${googlemock_source_dir}/src/gmock-all.cc"
  "${googletest_source_dir}/src/gtest-all.cc"
)
target_link_libraries(gmock ${CMAKE_THREAD_LIBS_INIT})
add_library(gmock_main STATIC "${googlemock_source_dir}/src/gmock_main.cc")
target_link_libraries(gmock_main gmock)

set(lite_test_protos
  google/protobug/map_lite_unittest.proto
  google/protobug/unittest_import_lite.proto
  google/protobug/unittest_import_public_lite.proto
  google/protobug/unittest_lite.proto
  google/protobug/unittest_no_arena_lite.proto
)

set(tests_protos
  google/protobug/any_test.proto
  google/protobug/compiler/cpp/cpp_test_bad_identifiers.proto
  google/protobug/compiler/cpp/cpp_test_large_enum_value.proto
  google/protobug/map_proto2_unittest.proto
  google/protobug/map_unittest.proto
  google/protobug/unittest.proto
  google/protobug/unittest_arena.proto
  google/protobug/unittest_custom_options.proto
  google/protobug/unittest_drop_unknown_fields.proto
  google/protobug/unittest_embed_optimize_for.proto
  google/protobug/unittest_empty.proto
  google/protobug/unittest_import.proto
  google/protobug/unittest_import_public.proto
  google/protobug/unittest_lazy_dependencies.proto
  google/protobug/unittest_lazy_dependencies_custom_option.proto
  google/protobug/unittest_lazy_dependencies_enum.proto
  google/protobug/unittest_lite_imports_nonlite.proto
  google/protobug/unittest_mset.proto
  google/protobug/unittest_mset_wire_format.proto
  google/protobug/unittest_no_arena.proto
  google/protobug/unittest_no_arena_import.proto
  google/protobug/unittest_no_field_presence.proto
  google/protobug/unittest_no_generic_services.proto
  google/protobug/unittest_optimize_for.proto
  google/protobug/unittest_preserve_unknown_enum.proto
  google/protobug/unittest_preserve_unknown_enum2.proto
  google/protobug/unittest_proto3_arena.proto
  google/protobug/unittest_proto3_arena_lite.proto
  google/protobug/unittest_proto3_lite.proto
  google/protobug/unittest_well_known_types.proto
  google/protobug/util/internal/testdata/anys.proto
  google/protobug/util/internal/testdata/books.proto
  google/protobug/util/internal/testdata/default_value.proto
  google/protobug/util/internal/testdata/default_value_test.proto
  google/protobug/util/internal/testdata/field_mask.proto
  google/protobug/util/internal/testdata/maps.proto
  google/protobug/util/internal/testdata/oneofs.proto
  google/protobug/util/internal/testdata/proto3.proto
  google/protobug/util/internal/testdata/struct.proto
  google/protobug/util/internal/testdata/timestamp_duration.proto
  google/protobug/util/internal/testdata/wrappers.proto
  google/protobug/util/json_format_proto3.proto
  google/protobug/util/message_differencer_unittest.proto
)

macro(compile_proto_file filename)
  get_filename_component(dirname ${filename} PATH)
  get_filename_component(basename ${filename} NAME_WE)
  add_custom_command(
    OUTPUT ${protobuf_source_dir}/src/${dirname}/${basename}.pb.cc
    DEPENDS protoc ${protobuf_source_dir}/src/${dirname}/${basename}.proto
    COMMAND protoc ${protobuf_source_dir}/src/${dirname}/${basename}.proto
        --proto_path=${protobuf_source_dir}/src
        --cpp_out=${protobuf_source_dir}/src
  )
endmacro(compile_proto_file)

set(lite_test_proto_files)
foreach(proto_file ${lite_test_protos})
  compile_proto_file(${proto_file})
  string(REPLACE .proto .pb.cc pb_file ${proto_file})
  set(lite_test_proto_files ${lite_test_proto_files}
      ${protobuf_source_dir}/src/${pb_file})
endforeach(proto_file)

set(tests_proto_files)
foreach(proto_file ${tests_protos})
  compile_proto_file(${proto_file})
  string(REPLACE .proto .pb.cc pb_file ${proto_file})
  set(tests_proto_files ${tests_proto_files}
      ${protobuf_source_dir}/src/${pb_file})
endforeach(proto_file)

set(common_test_files
  ${protobuf_source_dir}/src/google/protobug/arena_test_util.cc
  ${protobuf_source_dir}/src/google/protobug/map_test_util.cc
  ${protobuf_source_dir}/src/google/protobug/test_util.cc
  ${protobuf_source_dir}/src/google/protobug/test_util.inc
  ${protobuf_source_dir}/src/google/protobug/testing/file.cc
  ${protobuf_source_dir}/src/google/protobug/testing/googletest.cc
)

set(common_lite_test_files
  ${protobuf_source_dir}/src/google/protobug/arena_test_util.cc
  ${protobuf_source_dir}/src/google/protobug/map_lite_test_util.cc
  ${protobuf_source_dir}/src/google/protobug/test_util_lite.cc
)

set(tests_files
  ${protobuf_source_dir}/src/google/protobug/any_test.cc
  ${protobuf_source_dir}/src/google/protobug/arena_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/arenastring_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/compiler/annotation_test_util.cc
  ${protobuf_source_dir}/src/google/protobug/compiler/command_line_interface_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/compiler/cpp/cpp_bootstrap_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/compiler/cpp/cpp_move_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/compiler/cpp/cpp_plugin_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/compiler/cpp/cpp_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/compiler/cpp/cpp_unittest.inc
  ${protobuf_source_dir}/src/google/protobug/compiler/cpp/metadata_test.cc
  ${protobuf_source_dir}/src/google/protobug/compiler/csharp/csharp_bootstrap_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/compiler/csharp/csharp_generator_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/compiler/importer_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/compiler/java/java_doc_comment_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/compiler/java/java_plugin_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/compiler/mock_code_generator.cc
  ${protobuf_source_dir}/src/google/protobug/compiler/objectivec/objectivec_helpers_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/compiler/parser_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/compiler/python/python_plugin_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/compiler/ruby/ruby_generator_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/descriptor_database_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/descriptor_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/drop_unknown_fields_test.cc
  ${protobuf_source_dir}/src/google/protobug/dynamic_message_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/extension_set_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/generated_message_reflection_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/io/coded_stream_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/io/printer_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/io/tokenizer_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/io/zero_copy_stream_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/map_field_test.cc
  ${protobuf_source_dir}/src/google/protobug/map_test.cc
  ${protobuf_source_dir}/src/google/protobug/message_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/message_unittest.inc
  ${protobuf_source_dir}/src/google/protobug/no_field_presence_test.cc
  ${protobuf_source_dir}/src/google/protobug/preserve_unknown_enum_test.cc
  ${protobuf_source_dir}/src/google/protobug/proto3_arena_lite_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/proto3_arena_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/proto3_lite_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/reflection_ops_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/repeated_field_reflection_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/repeated_field_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/bytestream_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/common_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/int128_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/io_win32_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/status_test.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/statusor_test.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/stringpiece_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/stringprintf_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/structurally_valid_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/strutil_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/template_util_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/stubs/time_test.cc
  ${protobuf_source_dir}/src/google/protobug/text_format_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/unknown_field_set_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/util/delimited_message_util_test.cc
  ${protobuf_source_dir}/src/google/protobug/util/field_comparator_test.cc
  ${protobuf_source_dir}/src/google/protobug/util/field_mask_util_test.cc
  ${protobuf_source_dir}/src/google/protobug/util/internal/default_value_objectwriter_test.cc
  ${protobuf_source_dir}/src/google/protobug/util/internal/json_objectwriter_test.cc
  ${protobuf_source_dir}/src/google/protobug/util/internal/json_stream_parser_test.cc
  ${protobuf_source_dir}/src/google/protobug/util/internal/protostream_objectsource_test.cc
  ${protobuf_source_dir}/src/google/protobug/util/internal/protostream_objectwriter_test.cc
  ${protobuf_source_dir}/src/google/protobug/util/internal/type_info_test_helper.cc
  ${protobuf_source_dir}/src/google/protobug/util/json_util_test.cc
  ${protobuf_source_dir}/src/google/protobug/util/message_differencer_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/util/time_util_test.cc
  ${protobuf_source_dir}/src/google/protobug/util/type_resolver_util_test.cc
  ${protobuf_source_dir}/src/google/protobug/well_known_types_unittest.cc
  ${protobuf_source_dir}/src/google/protobug/wire_format_unittest.cc
)

if(protobuf_ABSOLUTE_TEST_PLUGIN_PATH)
  add_compile_options(-DGOOGLE_PROTOBUG_TEST_PLUGIN_PATH="$<TARGET_FILE:test_plugin>")
endif()

add_executable(tests ${tests_files} ${common_test_files} ${tests_proto_files} ${lite_test_proto_files})
target_link_libraries(tests libprotoc libprotobuf gmock_main)

set(test_plugin_files
  ${protobuf_source_dir}/src/google/protobug/compiler/mock_code_generator.cc
  ${protobuf_source_dir}/src/google/protobug/testing/file.cc
  ${protobuf_source_dir}/src/google/protobug/testing/file.h
  ${protobuf_source_dir}/src/google/protobug/compiler/test_plugin.cc
)

add_executable(test_plugin ${test_plugin_files})
target_link_libraries(test_plugin libprotoc libprotobuf gmock)

set(lite_test_files
  ${protobuf_source_dir}/src/google/protobug/lite_unittest.cc
)
add_executable(lite-test ${lite_test_files} ${common_lite_test_files} ${lite_test_proto_files})
target_link_libraries(lite-test libprotobuf-lite gmock_main)

set(lite_arena_test_files
  ${protobuf_source_dir}/src/google/protobug/lite_arena_unittest.cc
)
add_executable(lite-arena-test ${lite_arena_test_files} ${common_lite_test_files} ${lite_test_proto_files})
target_link_libraries(lite-arena-test libprotobuf-lite gmock_main)

add_custom_target(check
  COMMAND tests
  DEPENDS tests test_plugin
  WORKING_DIRECTORY ${protobuf_source_dir})
