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
  google/leap_protobuf/map_lite_unittest.proto
  google/leap_protobuf/unittest_import_lite.proto
  google/leap_protobuf/unittest_import_public_lite.proto
  google/leap_protobuf/unittest_lite.proto
  google/leap_protobuf/unittest_no_arena_lite.proto
)

set(tests_protos
  google/leap_protobuf/any_test.proto
  google/leap_protobuf/compiler/cpp/cpp_test_bad_identifiers.proto
  google/leap_protobuf/compiler/cpp/cpp_test_large_enum_value.proto
  google/leap_protobuf/map_proto2_unittest.proto
  google/leap_protobuf/map_unittest.proto
  google/leap_protobuf/unittest.proto
  google/leap_protobuf/unittest_arena.proto
  google/leap_protobuf/unittest_custom_options.proto
  google/leap_protobuf/unittest_drop_unknown_fields.proto
  google/leap_protobuf/unittest_embed_optimize_for.proto
  google/leap_protobuf/unittest_empty.proto
  google/leap_protobuf/unittest_import.proto
  google/leap_protobuf/unittest_import_public.proto
  google/leap_protobuf/unittest_lazy_dependencies.proto
  google/leap_protobuf/unittest_lazy_dependencies_custom_option.proto
  google/leap_protobuf/unittest_lazy_dependencies_enum.proto
  google/leap_protobuf/unittest_lite_imports_nonlite.proto
  google/leap_protobuf/unittest_mset.proto
  google/leap_protobuf/unittest_mset_wire_format.proto
  google/leap_protobuf/unittest_no_arena.proto
  google/leap_protobuf/unittest_no_arena_import.proto
  google/leap_protobuf/unittest_no_field_presence.proto
  google/leap_protobuf/unittest_no_generic_services.proto
  google/leap_protobuf/unittest_optimize_for.proto
  google/leap_protobuf/unittest_preserve_unknown_enum.proto
  google/leap_protobuf/unittest_preserve_unknown_enum2.proto
  google/leap_protobuf/unittest_proto3_arena.proto
  google/leap_protobuf/unittest_proto3_arena_lite.proto
  google/leap_protobuf/unittest_proto3_lite.proto
  google/leap_protobuf/unittest_well_known_types.proto
  google/leap_protobuf/util/internal/testdata/anys.proto
  google/leap_protobuf/util/internal/testdata/books.proto
  google/leap_protobuf/util/internal/testdata/default_value.proto
  google/leap_protobuf/util/internal/testdata/default_value_test.proto
  google/leap_protobuf/util/internal/testdata/field_mask.proto
  google/leap_protobuf/util/internal/testdata/maps.proto
  google/leap_protobuf/util/internal/testdata/oneofs.proto
  google/leap_protobuf/util/internal/testdata/proto3.proto
  google/leap_protobuf/util/internal/testdata/struct.proto
  google/leap_protobuf/util/internal/testdata/timestamp_duration.proto
  google/leap_protobuf/util/internal/testdata/wrappers.proto
  google/leap_protobuf/util/json_format_proto3.proto
  google/leap_protobuf/util/message_differencer_unittest.proto
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
  ${protobuf_source_dir}/src/google/leap_protobuf/arena_test_util.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/map_test_util.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/test_util.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/test_util.inc
  ${protobuf_source_dir}/src/google/leap_protobuf/testing/file.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/testing/googletest.cc
)

set(common_lite_test_files
  ${protobuf_source_dir}/src/google/leap_protobuf/arena_test_util.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/map_lite_test_util.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/test_util_lite.cc
)

set(tests_files
  ${protobuf_source_dir}/src/google/leap_protobuf/any_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/arena_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/arenastring_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/compiler/annotation_test_util.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/compiler/command_line_interface_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_bootstrap_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_move_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_plugin_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/cpp_unittest.inc
  ${protobuf_source_dir}/src/google/leap_protobuf/compiler/cpp/metadata_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_bootstrap_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/compiler/csharp/csharp_generator_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/compiler/importer_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_doc_comment_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/compiler/java/java_plugin_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/compiler/mock_code_generator.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/compiler/objectivec/objectivec_helpers_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/compiler/parser_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/compiler/python/python_plugin_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/compiler/ruby/ruby_generator_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/descriptor_database_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/descriptor_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/drop_unknown_fields_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/dynamic_message_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/extension_set_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/generated_message_reflection_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/io/coded_stream_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/io/printer_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/io/tokenizer_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/io/zero_copy_stream_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/map_field_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/map_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/message_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/message_unittest.inc
  ${protobuf_source_dir}/src/google/leap_protobuf/no_field_presence_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/preserve_unknown_enum_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/proto3_arena_lite_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/proto3_arena_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/proto3_lite_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/reflection_ops_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/repeated_field_reflection_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/repeated_field_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/stubs/bytestream_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/stubs/common_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/stubs/int128_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/stubs/io_win32_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/stubs/status_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/stubs/statusor_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/stubs/stringpiece_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/stubs/stringprintf_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/stubs/structurally_valid_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/stubs/strutil_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/stubs/template_util_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/stubs/time_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/text_format_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/unknown_field_set_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/util/delimited_message_util_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/util/field_comparator_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/util/field_mask_util_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/util/internal/default_value_objectwriter_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/util/internal/json_objectwriter_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/util/internal/json_stream_parser_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/util/internal/protostream_objectsource_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/util/internal/protostream_objectwriter_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/util/internal/type_info_test_helper.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/util/json_util_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/util/message_differencer_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/util/time_util_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/util/type_resolver_util_test.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/well_known_types_unittest.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/wire_format_unittest.cc
)

if(protobuf_ABSOLUTE_TEST_PLUGIN_PATH)
  add_compile_options(-DGOOGLE_PROTOBUF_TEST_PLUGIN_PATH="$<TARGET_FILE:test_plugin>")
endif()

add_executable(tests ${tests_files} ${common_test_files} ${tests_proto_files} ${lite_test_proto_files})
target_link_libraries(tests libprotoc libprotobuf gmock_main)

set(test_plugin_files
  ${protobuf_source_dir}/src/google/leap_protobuf/compiler/mock_code_generator.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/testing/file.cc
  ${protobuf_source_dir}/src/google/leap_protobuf/testing/file.h
  ${protobuf_source_dir}/src/google/leap_protobuf/compiler/test_plugin.cc
)

add_executable(test_plugin ${test_plugin_files})
target_link_libraries(test_plugin libprotoc libprotobuf gmock)

set(lite_test_files
  ${protobuf_source_dir}/src/google/leap_protobuf/lite_unittest.cc
)
add_executable(lite-test ${lite_test_files} ${common_lite_test_files} ${lite_test_proto_files})
target_link_libraries(lite-test libprotobuf-lite gmock_main)

set(lite_arena_test_files
  ${protobuf_source_dir}/src/google/leap_protobuf/lite_arena_unittest.cc
)
add_executable(lite-arena-test ${lite_arena_test_files} ${common_lite_test_files} ${lite_test_proto_files})
target_link_libraries(lite-arena-test libprotobuf-lite gmock_main)

add_custom_target(check
  COMMAND tests
  DEPENDS tests test_plugin
  WORKING_DIRECTORY ${protobuf_source_dir})
