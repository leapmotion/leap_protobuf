## Process this file with automake to produce Makefile.in

if HAVE_ZLIB
GZCHECKPROGRAMS = zcgzip zcgunzip
GZHEADERS = google/protobug/io/gzip_stream.h
GZTESTS = google/protobug/io/gzip_stream_unittest.sh
ZLIB_DEF = -DHAVE_ZLIB=1
else
GZCHECKPROGRAMS =
GZHEADERS =
GZTESTS =
ZLIB_DEF =
endif

if HAVE_PTHREAD
PTHREAD_DEF = -DHAVE_PTHREAD=1
else
PTHREAD_DEF =
endif

if GCC
# Turn on all warnings except for sign comparison (we ignore sign comparison
# in Google so our code base have tons of such warnings).
NO_OPT_CXXFLAGS = $(PTHREAD_CFLAGS) $(PTHREAD_DEF) $(ZLIB_DEF) -Wall -Wno-sign-compare
else
NO_OPT_CXXFLAGS = $(PTHREAD_CFLAGS) $(PTHREAD_DEF) $(ZLIB_DEF)
endif

AM_CXXFLAGS = $(NO_OPT_CXXFLAGS) $(PROTOBUF_OPT_FLAG)

AM_LDFLAGS = $(PTHREAD_CFLAGS)

# If I say "dist_include_DATA", automake complains that $(includedir) is not
# a "legitimate" directory for DATA.  Screw you, automake.
protodir = $(includedir)

# If you are adding new files here, also remember to change the build files for
# all other languages, //protoc-artifacts/build-zip.sh and run
# //update_file_list.sh for bazel.
nobase_dist_proto_DATA = google/protobug/descriptor.proto      \
                         google/protobug/any.proto             \
                         google/protobug/api.proto             \
                         google/protobug/duration.proto        \
                         google/protobug/empty.proto           \
                         google/protobug/field_mask.proto      \
                         google/protobug/source_context.proto  \
                         google/protobug/struct.proto          \
                         google/protobug/timestamp.proto       \
                         google/protobug/type.proto            \
                         google/protobug/wrappers.proto        \
                         google/protobug/compiler/plugin.proto

# Not sure why these don't get cleaned automatically.
clean-local:
	rm -f *.loT

CLEANFILES = $(protoc_outputs) unittest_proto_middleman \
             testzip.jar testzip.list testzip.proto testzip.zip \
             no_warning_test.cc \
             google/protobug/compiler/js/well_known_types_embed.cc \
             js_embed$(EXEEXT)

MAINTAINERCLEANFILES =   \
  Makefile.in

nobase_include_HEADERS =                                         \
  google/protobug/stubs/callback.h                               \
  google/protobug/stubs/bytestream.h                             \
  google/protobug/stubs/casts.h                                  \
  google/protobug/stubs/common.h                                 \
  google/protobug/stubs/fastmem.h                                \
  google/protobug/stubs/hash.h                                   \
  google/protobug/stubs/logging.h                                \
  google/protobug/stubs/macros.h                                 \
  google/protobug/stubs/mutex.h                                  \
  google/protobug/stubs/once.h                                   \
  google/protobug/stubs/platform_macros.h                        \
  google/protobug/stubs/port.h                                   \
  google/protobug/stubs/singleton.h                              \
  google/protobug/stubs/status.h                                 \
  google/protobug/stubs/stl_util.h                               \
  google/protobug/stubs/stringpiece.h                            \
  google/protobug/stubs/template_util.h                          \
  google/protobug/any.pb.h                                       \
  google/protobug/api.pb.h                                       \
  google/protobug/any.h                                          \
  google/protobug/arena.h                                        \
  google/protobug/arena_impl.h                                   \
  google/protobug/arenastring.h                                  \
  google/protobug/descriptor_database.h                          \
  google/protobug/descriptor.h                                   \
  google/protobug/descriptor.pb.h                                \
  google/protobug/duration.pb.h                                  \
  google/protobug/dynamic_message.h                              \
  google/protobug/empty.pb.h                                     \
  google/protobug/extension_set.h                                \
  google/protobug/field_mask.pb.h                                \
  google/protobug/generated_enum_reflection.h                    \
  google/protobug/generated_enum_util.h                          \
  google/protobug/generated_message_reflection.h                 \
  google/protobug/generated_message_table_driven.h               \
  google/protobug/generated_message_util.h                       \
  google/protobug/has_bits.h                                     \
  google/protobug/implicit_weak_message.h                        \
  google/protobug/inlined_string_field.h                         \
  google/protobug/map_entry.h                                    \
  google/protobug/map_entry_lite.h                               \
  google/protobug/map_field.h                                    \
  google/protobug/map_field_inl.h                                \
  google/protobug/map_field_lite.h                               \
  google/protobug/map.h                                          \
  google/protobug/map_type_handler.h                             \
  google/protobug/message.h                                      \
  google/protobug/message_lite.h                                 \
  google/protobug/metadata.h                                     \
  google/protobug/metadata_lite.h                                \
  google/protobug/reflection.h                                   \
  google/protobug/reflection_ops.h                               \
  google/protobug/repeated_field.h                               \
  google/protobug/service.h                                      \
  google/protobug/source_context.pb.h                            \
  google/protobug/struct.pb.h                                    \
  google/protobug/text_format.h                                  \
  google/protobug/timestamp.pb.h                                 \
  google/protobug/type.pb.h                                      \
  google/protobug/unknown_field_set.h                            \
  google/protobug/wire_format.h                                  \
  google/protobug/wire_format_lite.h                             \
  google/protobug/wire_format_lite_inl.h                         \
  google/protobug/wrappers.pb.h                                  \
  google/protobug/io/coded_stream.h                              \
  $(GZHEADERS)                                                   \
  google/protobug/io/printer.h                                   \
  google/protobug/io/strtod.h                                    \
  google/protobug/io/tokenizer.h                                 \
  google/protobug/io/zero_copy_stream.h                          \
  google/protobug/io/zero_copy_stream_impl.h                     \
  google/protobug/io/zero_copy_stream_impl_lite.h                \
  google/protobug/compiler/code_generator.h                      \
  google/protobug/compiler/command_line_interface.h              \
  google/protobug/compiler/importer.h                            \
  google/protobug/compiler/parser.h                              \
  google/protobug/compiler/plugin.h                              \
  google/protobug/compiler/plugin.pb.h                           \
  google/protobug/compiler/cpp/cpp_generator.h                   \
  google/protobug/compiler/csharp/csharp_generator.h             \
  google/protobug/compiler/csharp/csharp_names.h                 \
  google/protobug/compiler/java/java_generator.h                 \
  google/protobug/compiler/java/java_names.h                     \
  google/protobug/compiler/js/js_generator.h                     \
  google/protobug/compiler/js/well_known_types_embed.h           \
  google/protobug/compiler/objectivec/objectivec_generator.h     \
  google/protobug/compiler/objectivec/objectivec_helpers.h       \
  google/protobug/compiler/php/php_generator.h                   \
  google/protobug/compiler/python/python_generator.h             \
  google/protobug/compiler/ruby/ruby_generator.h                 \
  google/protobug/util/type_resolver.h                           \
  google/protobug/util/delimited_message_util.h                  \
  google/protobug/util/field_comparator.h                        \
  google/protobug/util/field_mask_util.h                         \
  google/protobug/util/json_util.h                               \
  google/protobug/util/time_util.h                               \
  google/protobug/util/type_resolver_util.h                      \
  google/protobug/util/message_differencer.h

lib_LTLIBRARIES = libprotobuf-lite.la libprotobuf.la libprotoc.la

libprotobuf_lite_la_LIBADD = $(PTHREAD_LIBS)
libprotobuf_lite_la_LDFLAGS = -version-info 16:0:0 -export-dynamic -no-undefined
if HAVE_LD_VERSION_SCRIPT
libprotobuf_lite_la_LDFLAGS += -Wl,--version-script=$(srcdir)/libprotobuf-lite.map
EXTRA_libprotobuf_lite_la_DEPENDENCIES = libprotobuf-lite.map
endif
libprotobuf_lite_la_SOURCES =                                  \
  google/protobug/stubs/bytestream.cc                          \
  google/protobug/stubs/bytestream.h                           \
  google/protobug/stubs/common.cc                              \
  google/protobug/stubs/hash.h                                 \
  google/protobug/stubs/int128.cc                              \
  google/protobug/stubs/int128.h                               \
  google/protobug/stubs/io_win32.cc                            \
  google/protobug/stubs/io_win32.h                             \
  google/protobug/stubs/map_util.h                             \
  google/protobug/stubs/mathutil.h                             \
  google/protobug/stubs/status.cc                              \
  google/protobug/stubs/status.h                               \
  google/protobug/stubs/status_macros.h                        \
  google/protobug/stubs/statusor.cc                            \
  google/protobug/stubs/statusor.h                             \
  google/protobug/stubs/stringpiece.cc                         \
  google/protobug/stubs/stringpiece.h                          \
  google/protobug/stubs/stringprintf.cc                        \
  google/protobug/stubs/stringprintf.h                         \
  google/protobug/stubs/structurally_valid.cc                  \
  google/protobug/stubs/strutil.cc                             \
  google/protobug/stubs/strutil.h                              \
  google/protobug/stubs/time.cc                                \
  google/protobug/stubs/time.h                                 \
  google/protobug/arena.cc                                     \
  google/protobug/arenastring.cc                               \
  google/protobug/extension_set.cc                             \
  google/protobug/generated_message_util.cc                    \
  google/protobug/generated_message_table_driven_lite.h        \
  google/protobug/generated_message_table_driven_lite.cc       \
  google/protobug/implicit_weak_message.cc                     \
  google/protobug/message_lite.cc                              \
  google/protobug/repeated_field.cc                            \
  google/protobug/wire_format_lite.cc                          \
  google/protobug/io/coded_stream.cc                           \
  google/protobug/io/coded_stream_inl.h                        \
  google/protobug/io/zero_copy_stream.cc                       \
  google/protobug/io/zero_copy_stream_impl_lite.cc

libprotobuf_la_LIBADD = $(PTHREAD_LIBS)
libprotobuf_la_LDFLAGS = -version-info 16:0:0 -export-dynamic -no-undefined
if HAVE_LD_VERSION_SCRIPT
libprotobuf_la_LDFLAGS += -Wl,--version-script=$(srcdir)/libprotobuf.map
EXTRA_libprotobuf_la_DEPENDENCIES = libprotobuf.map
endif
libprotobuf_la_SOURCES =                                       \
  $(libprotobuf_lite_la_SOURCES)                               \
  google/protobug/any.pb.cc                                    \
  google/protobug/api.pb.cc                                    \
  google/protobug/stubs/mathlimits.cc                          \
  google/protobug/stubs/mathlimits.h                           \
  google/protobug/any.cc                                       \
  google/protobug/descriptor.cc                                \
  google/protobug/descriptor_database.cc                       \
  google/protobug/descriptor.pb.cc                             \
  google/protobug/duration.pb.cc                               \
  google/protobug/dynamic_message.cc                           \
  google/protobug/empty.pb.cc                                  \
  google/protobug/extension_set_heavy.cc                       \
  google/protobug/field_mask.pb.cc                             \
  google/protobug/generated_message_reflection.cc              \
  google/protobug/generated_message_table_driven_lite.h        \
  google/protobug/generated_message_table_driven.cc            \
  google/protobug/map_field.cc                                 \
  google/protobug/message.cc                                   \
  google/protobug/reflection_internal.h                        \
  google/protobug/reflection_ops.cc                            \
  google/protobug/service.cc                                   \
  google/protobug/source_context.pb.cc                         \
  google/protobug/struct.pb.cc                                 \
  google/protobug/stubs/substitute.cc                          \
  google/protobug/stubs/substitute.h                           \
  google/protobug/text_format.cc                               \
  google/protobug/timestamp.pb.cc                              \
  google/protobug/type.pb.cc                                   \
  google/protobug/unknown_field_set.cc                         \
  google/protobug/wire_format.cc                               \
  google/protobug/wrappers.pb.cc                               \
  google/protobug/io/gzip_stream.cc                            \
  google/protobug/io/printer.cc                                \
  google/protobug/io/strtod.cc                                 \
  google/protobug/io/tokenizer.cc                              \
  google/protobug/io/zero_copy_stream_impl.cc                  \
  google/protobug/compiler/importer.cc                         \
  google/protobug/compiler/parser.cc                           \
  google/protobug/util/delimited_message_util.cc               \
  google/protobug/util/field_comparator.cc                     \
  google/protobug/util/field_mask_util.cc                      \
  google/protobug/util/internal/constants.h                    \
  google/protobug/util/internal/datapiece.cc                   \
  google/protobug/util/internal/datapiece.h                    \
  google/protobug/util/internal/default_value_objectwriter.cc  \
  google/protobug/util/internal/default_value_objectwriter.h   \
  google/protobug/util/internal/error_listener.cc              \
  google/protobug/util/internal/error_listener.h               \
  google/protobug/util/internal/expecting_objectwriter.h       \
  google/protobug/util/internal/field_mask_utility.cc          \
  google/protobug/util/internal/field_mask_utility.h           \
  google/protobug/util/internal/json_escaping.cc               \
  google/protobug/util/internal/json_escaping.h                \
  google/protobug/util/internal/json_objectwriter.cc           \
  google/protobug/util/internal/json_objectwriter.h            \
  google/protobug/util/internal/json_stream_parser.cc          \
  google/protobug/util/internal/json_stream_parser.h           \
  google/protobug/util/internal/location_tracker.h             \
  google/protobug/util/internal/mock_error_listener.h          \
  google/protobug/util/internal/object_location_tracker.h      \
  google/protobug/util/internal/object_source.h                \
  google/protobug/util/internal/object_writer.cc               \
  google/protobug/util/internal/object_writer.h                \
  google/protobug/util/internal/protostream_objectsource.cc    \
  google/protobug/util/internal/protostream_objectsource.h     \
  google/protobug/util/internal/protostream_objectwriter.cc    \
  google/protobug/util/internal/protostream_objectwriter.h     \
  google/protobug/util/internal/proto_writer.cc                \
  google/protobug/util/internal/proto_writer.h                 \
  google/protobug/util/internal/structured_objectwriter.h      \
  google/protobug/util/internal/type_info.cc                   \
  google/protobug/util/internal/type_info.h                    \
  google/protobug/util/internal/type_info_test_helper.cc       \
  google/protobug/util/internal/type_info_test_helper.h        \
  google/protobug/util/internal/utility.cc                     \
  google/protobug/util/internal/utility.h                      \
  google/protobug/util/json_util.cc                            \
  google/protobug/util/message_differencer.cc                  \
  google/protobug/util/time_util.cc                            \
  google/protobug/util/type_resolver_util.cc

nodist_libprotobuf_la_SOURCES = $(nodist_libprotobuf_lite_la_SOURCES)

libprotoc_la_LIBADD = $(PTHREAD_LIBS) libprotobuf.la
libprotoc_la_LDFLAGS = -version-info 16:0:0 -export-dynamic -no-undefined
if HAVE_LD_VERSION_SCRIPT
libprotoc_la_LDFLAGS += -Wl,--version-script=$(srcdir)/libprotoc.map
EXTRA_libprotoc_la_DEPENDENCIES = libprotoc.map
endif
libprotoc_la_SOURCES =                                         \
  google/protobug/compiler/code_generator.cc                   \
  google/protobug/compiler/command_line_interface.cc           \
  google/protobug/compiler/plugin.cc                           \
  google/protobug/compiler/plugin.pb.cc                        \
  google/protobug/compiler/subprocess.cc                       \
  google/protobug/compiler/subprocess.h                        \
  google/protobug/compiler/zip_writer.cc                       \
  google/protobug/compiler/zip_writer.h                        \
  google/protobug/compiler/cpp/cpp_enum.cc                     \
  google/protobug/compiler/cpp/cpp_enum.h                      \
  google/protobug/compiler/cpp/cpp_enum_field.cc               \
  google/protobug/compiler/cpp/cpp_enum_field.h                \
  google/protobug/compiler/cpp/cpp_extension.cc                \
  google/protobug/compiler/cpp/cpp_extension.h                 \
  google/protobug/compiler/cpp/cpp_field.cc                    \
  google/protobug/compiler/cpp/cpp_field.h                     \
  google/protobug/compiler/cpp/cpp_file.cc                     \
  google/protobug/compiler/cpp/cpp_file.h                      \
  google/protobug/compiler/cpp/cpp_generator.cc                \
  google/protobug/compiler/cpp/cpp_helpers.cc                  \
  google/protobug/compiler/cpp/cpp_helpers.h                   \
  google/protobug/compiler/cpp/cpp_map_field.cc                \
  google/protobug/compiler/cpp/cpp_map_field.h                 \
  google/protobug/compiler/cpp/cpp_message.cc                  \
  google/protobug/compiler/cpp/cpp_message.h                   \
  google/protobug/compiler/cpp/cpp_message_field.cc            \
  google/protobug/compiler/cpp/cpp_message_field.h             \
  google/protobug/compiler/cpp/cpp_message_layout_helper.h     \
  google/protobug/compiler/cpp/cpp_options.h                   \
  google/protobug/compiler/cpp/cpp_padding_optimizer.cc        \
  google/protobug/compiler/cpp/cpp_padding_optimizer.h         \
  google/protobug/compiler/cpp/cpp_primitive_field.cc          \
  google/protobug/compiler/cpp/cpp_primitive_field.h           \
  google/protobug/compiler/cpp/cpp_service.cc                  \
  google/protobug/compiler/cpp/cpp_service.h                   \
  google/protobug/compiler/cpp/cpp_string_field.cc             \
  google/protobug/compiler/cpp/cpp_string_field.h              \
  google/protobug/compiler/java/java_context.cc                \
  google/protobug/compiler/java/java_context.h                 \
  google/protobug/compiler/java/java_enum.cc                   \
  google/protobug/compiler/java/java_enum_lite.cc              \
  google/protobug/compiler/java/java_enum_field.cc             \
  google/protobug/compiler/java/java_enum_field.h              \
  google/protobug/compiler/java/java_enum_field_lite.cc        \
  google/protobug/compiler/java/java_enum_field_lite.h         \
  google/protobug/compiler/java/java_enum.h                    \
  google/protobug/compiler/java/java_enum_lite.h               \
  google/protobug/compiler/java/java_extension.cc              \
  google/protobug/compiler/java/java_extension.h               \
  google/protobug/compiler/java/java_extension_lite.cc         \
  google/protobug/compiler/java/java_extension_lite.h          \
  google/protobug/compiler/java/java_field.cc                  \
  google/protobug/compiler/java/java_field.h                   \
  google/protobug/compiler/java/java_file.cc                   \
  google/protobug/compiler/java/java_file.h                    \
  google/protobug/compiler/java/java_generator.cc              \
  google/protobug/compiler/java/java_generator_factory.cc      \
  google/protobug/compiler/java/java_generator_factory.h       \
  google/protobug/compiler/java/java_helpers.cc                \
  google/protobug/compiler/java/java_helpers.h                 \
  google/protobug/compiler/java/java_lazy_message_field.cc     \
  google/protobug/compiler/java/java_lazy_message_field.h      \
  google/protobug/compiler/java/java_lazy_message_field_lite.cc\
  google/protobug/compiler/java/java_lazy_message_field_lite.h \
  google/protobug/compiler/java/java_map_field.cc              \
  google/protobug/compiler/java/java_map_field.h               \
  google/protobug/compiler/java/java_map_field_lite.cc         \
  google/protobug/compiler/java/java_map_field_lite.h          \
  google/protobug/compiler/java/java_message.cc                \
  google/protobug/compiler/java/java_message_lite.cc           \
  google/protobug/compiler/java/java_message_builder.cc        \
  google/protobug/compiler/java/java_message_builder_lite.cc   \
  google/protobug/compiler/java/java_message_field.cc          \
  google/protobug/compiler/java/java_message_field.h           \
  google/protobug/compiler/java/java_message_field_lite.cc     \
  google/protobug/compiler/java/java_message_field_lite.h      \
  google/protobug/compiler/java/java_message.h                 \
  google/protobug/compiler/java/java_message_lite.h            \
  google/protobug/compiler/java/java_message_builder.h         \
  google/protobug/compiler/java/java_message_builder_lite.h    \
  google/protobug/compiler/java/java_name_resolver.cc          \
  google/protobug/compiler/java/java_name_resolver.h           \
  google/protobug/compiler/java/java_options.h                 \
  google/protobug/compiler/java/java_primitive_field.cc        \
  google/protobug/compiler/java/java_primitive_field.h         \
  google/protobug/compiler/java/java_primitive_field_lite.cc   \
  google/protobug/compiler/java/java_primitive_field_lite.h    \
  google/protobug/compiler/java/java_shared_code_generator.cc  \
  google/protobug/compiler/java/java_shared_code_generator.h   \
  google/protobug/compiler/java/java_service.cc                \
  google/protobug/compiler/java/java_service.h                 \
  google/protobug/compiler/java/java_string_field.cc           \
  google/protobug/compiler/java/java_string_field.h            \
  google/protobug/compiler/java/java_string_field_lite.cc      \
  google/protobug/compiler/java/java_string_field_lite.h       \
  google/protobug/compiler/java/java_doc_comment.cc            \
  google/protobug/compiler/java/java_doc_comment.h             \
  google/protobug/compiler/js/js_generator.cc                  \
  google/protobug/compiler/js/well_known_types_embed.cc        \
  google/protobug/compiler/objectivec/objectivec_enum.cc       \
  google/protobug/compiler/objectivec/objectivec_enum.h        \
  google/protobug/compiler/objectivec/objectivec_enum_field.cc \
  google/protobug/compiler/objectivec/objectivec_enum_field.h  \
  google/protobug/compiler/objectivec/objectivec_extension.cc  \
  google/protobug/compiler/objectivec/objectivec_extension.h   \
  google/protobug/compiler/objectivec/objectivec_field.cc      \
  google/protobug/compiler/objectivec/objectivec_field.h       \
  google/protobug/compiler/objectivec/objectivec_file.cc       \
  google/protobug/compiler/objectivec/objectivec_file.h        \
  google/protobug/compiler/objectivec/objectivec_generator.cc  \
  google/protobug/compiler/objectivec/objectivec_helpers.cc    \
  google/protobug/compiler/objectivec/objectivec_helpers.h     \
  google/protobug/compiler/objectivec/objectivec_map_field.cc  \
  google/protobug/compiler/objectivec/objectivec_map_field.h   \
  google/protobug/compiler/objectivec/objectivec_message.cc    \
  google/protobug/compiler/objectivec/objectivec_message.h     \
  google/protobug/compiler/objectivec/objectivec_message_field.cc \
  google/protobug/compiler/objectivec/objectivec_message_field.h \
  google/protobug/compiler/objectivec/objectivec_oneof.cc      \
  google/protobug/compiler/objectivec/objectivec_oneof.h       \
  google/protobug/compiler/objectivec/objectivec_primitive_field.cc \
  google/protobug/compiler/objectivec/objectivec_primitive_field.h \
  google/protobug/compiler/php/php_generator.cc                \
  google/protobug/compiler/python/python_generator.cc          \
  google/protobug/compiler/ruby/ruby_generator.cc              \
  google/protobug/compiler/csharp/csharp_doc_comment.cc        \
  google/protobug/compiler/csharp/csharp_doc_comment.h         \
  google/protobug/compiler/csharp/csharp_enum.cc               \
  google/protobug/compiler/csharp/csharp_enum.h                \
  google/protobug/compiler/csharp/csharp_enum_field.cc         \
  google/protobug/compiler/csharp/csharp_enum_field.h          \
  google/protobug/compiler/csharp/csharp_field_base.cc         \
  google/protobug/compiler/csharp/csharp_field_base.h          \
  google/protobug/compiler/csharp/csharp_generator.cc          \
  google/protobug/compiler/csharp/csharp_helpers.cc            \
  google/protobug/compiler/csharp/csharp_helpers.h             \
  google/protobug/compiler/csharp/csharp_map_field.cc          \
  google/protobug/compiler/csharp/csharp_map_field.h           \
  google/protobug/compiler/csharp/csharp_message.cc            \
  google/protobug/compiler/csharp/csharp_message.h             \
  google/protobug/compiler/csharp/csharp_message_field.cc      \
  google/protobug/compiler/csharp/csharp_message_field.h       \
  google/protobug/compiler/csharp/csharp_options.h             \
  google/protobug/compiler/csharp/csharp_primitive_field.cc    \
  google/protobug/compiler/csharp/csharp_primitive_field.h     \
  google/protobug/compiler/csharp/csharp_reflection_class.cc     \
  google/protobug/compiler/csharp/csharp_reflection_class.h      \
  google/protobug/compiler/csharp/csharp_repeated_enum_field.cc \
  google/protobug/compiler/csharp/csharp_repeated_enum_field.h \
  google/protobug/compiler/csharp/csharp_repeated_message_field.cc \
  google/protobug/compiler/csharp/csharp_repeated_message_field.h \
  google/protobug/compiler/csharp/csharp_repeated_primitive_field.cc \
  google/protobug/compiler/csharp/csharp_repeated_primitive_field.h \
  google/protobug/compiler/csharp/csharp_source_generator_base.cc \
  google/protobug/compiler/csharp/csharp_source_generator_base.h \
  google/protobug/compiler/csharp/csharp_wrapper_field.cc      \
  google/protobug/compiler/csharp/csharp_wrapper_field.h

bin_PROGRAMS = protoc
protoc_LDADD = $(PTHREAD_LIBS) libprotobuf.la libprotoc.la
protoc_SOURCES = google/protobug/compiler/main.cc

# The special JS code for the well-known types is linked into the compiler via
# well_known_types_embed.cc, which is generated from .js source files. We have
# to build the js_embed binary using $(CXX_FOR_BUILD) so that it is executable
# on the build machine in a cross-compilation setup.
js_embed$(EXEEXT): $(srcdir)/google/protobug/compiler/js/embed.cc
	$(CXX_FOR_BUILD) -o $@ $<
js_well_known_types_sources =                                  \
	google/protobug/compiler/js/well_known_types/any.js          \
	google/protobug/compiler/js/well_known_types/struct.js       \
	google/protobug/compiler/js/well_known_types/timestamp.js
# We have to cd to $(srcdir) so that out-of-tree builds work properly.
google/protobug/compiler/js/well_known_types_embed.cc: js_embed$(EXEEXT) $(js_well_known_types_sources)
	mkdir -p `dirname $@` && \
	oldpwd=`pwd` && cd $(srcdir) && \
	$$oldpwd/js_embed$(EXEEXT) $(js_well_known_types_sources) > $$oldpwd/$@

# Tests ==============================================================

protoc_inputs =                                                   \
  google/protobug/any_test.proto                                  \
  google/protobug/compiler/cpp/cpp_test_bad_identifiers.proto     \
  google/protobug/map_lite_unittest.proto                         \
  google/protobug/map_proto2_unittest.proto                       \
  google/protobug/map_unittest.proto                              \
  google/protobug/unittest_arena.proto                            \
  google/protobug/unittest_custom_options.proto                   \
  google/protobug/unittest_drop_unknown_fields.proto              \
  google/protobug/unittest_embed_optimize_for.proto               \
  google/protobug/unittest_empty.proto                            \
  google/protobug/unittest_enormous_descriptor.proto              \
  google/protobug/unittest_import_lite.proto                      \
  google/protobug/unittest_import.proto                           \
  google/protobug/unittest_import_public_lite.proto               \
  google/protobug/unittest_import_public.proto                    \
  google/protobug/unittest_lazy_dependencies.proto                \
  google/protobug/unittest_lazy_dependencies_custom_option.proto  \
  google/protobug/unittest_lazy_dependencies_enum.proto           \
  google/protobug/unittest_lite_imports_nonlite.proto             \
  google/protobug/unittest_lite.proto                             \
  google/protobug/unittest_mset.proto                             \
  google/protobug/unittest_mset_wire_format.proto                 \
  google/protobug/unittest_no_arena_lite.proto                    \
  google/protobug/unittest_no_arena_import.proto                  \
  google/protobug/unittest_no_arena.proto                         \
  google/protobug/unittest_no_field_presence.proto                \
  google/protobug/unittest_no_generic_services.proto              \
  google/protobug/unittest_optimize_for.proto                     \
  google/protobug/unittest_preserve_unknown_enum2.proto           \
  google/protobug/unittest_preserve_unknown_enum.proto            \
  google/protobug/unittest.proto                                  \
  google/protobug/unittest_proto3_arena.proto                     \
  google/protobug/unittest_proto3_arena_lite.proto                \
  google/protobug/unittest_proto3_lite.proto                      \
  google/protobug/unittest_well_known_types.proto                 \
  google/protobug/util/internal/testdata/anys.proto               \
  google/protobug/util/internal/testdata/books.proto              \
  google/protobug/util/internal/testdata/default_value.proto      \
  google/protobug/util/internal/testdata/default_value_test.proto \
  google/protobug/util/internal/testdata/field_mask.proto         \
  google/protobug/util/internal/testdata/maps.proto               \
  google/protobug/util/internal/testdata/oneofs.proto             \
  google/protobug/util/internal/testdata/proto3.proto             \
  google/protobug/util/internal/testdata/struct.proto             \
  google/protobug/util/internal/testdata/timestamp_duration.proto \
  google/protobug/util/internal/testdata/wrappers.proto           \
  google/protobug/util/json_format_proto3.proto                   \
  google/protobug/util/message_differencer_unittest.proto         \
  google/protobug/compiler/cpp/cpp_test_large_enum_value.proto

EXTRA_DIST =                                                   \
  $(protoc_inputs)                                             \
  $(js_well_known_types_sources)                               \
  solaris/libstdc++.la                                         \
  google/protobug/unittest_proto3.proto                        \
  google/protobug/test_messages_proto3.proto                   \
  google/protobug/test_messages_proto2.proto                   \
  google/protobug/io/gzip_stream.h                             \
  google/protobug/io/gzip_stream_unittest.sh                   \
  google/protobug/testdata/golden_message                      \
  google/protobug/testdata/golden_message_maps                 \
  google/protobug/testdata/golden_message_oneof_implemented    \
  google/protobug/testdata/golden_message_proto3               \
  google/protobug/testdata/golden_packed_fields_message        \
  google/protobug/testdata/bad_utf8_string                     \
  google/protobug/testdata/map_test_data.txt                   \
  google/protobug/testdata/text_format_unittest_data.txt       \
  google/protobug/testdata/text_format_unittest_data_oneof_implemented.txt  \
  google/protobug/testdata/text_format_unittest_data_pointy.txt             \
  google/protobug/testdata/text_format_unittest_data_pointy_oneof.txt       \
  google/protobug/testdata/text_format_unittest_extensions_data.txt         \
  google/protobug/testdata/text_format_unittest_extensions_data_pointy.txt  \
  google/protobug/package_info.h                               \
  google/protobug/io/package_info.h                            \
  google/protobug/util/package_info.h                          \
  google/protobug/compiler/js/embed.cc                         \
  google/protobug/compiler/ruby/ruby_generated_code.proto      \
  google/protobug/compiler/ruby/ruby_generated_code_pb.rb      \
  google/protobug/compiler/package_info.h                      \
  google/protobug/compiler/zip_output_unittest.sh              \
  libprotobuf-lite.map                                         \
  libprotobuf.map                                              \
  libprotoc.map                                                \
  README.md

protoc_lite_outputs =                                          \
  google/protobug/map_lite_unittest.pb.cc                      \
  google/protobug/map_lite_unittest.pb.h                       \
  google/protobug/unittest_lite.pb.cc                          \
  google/protobug/unittest_lite.pb.h                           \
  google/protobug/unittest_no_arena_lite.pb.cc                 \
  google/protobug/unittest_no_arena_lite.pb.h                  \
  google/protobug/unittest_import_lite.pb.cc                   \
  google/protobug/unittest_import_lite.pb.h                    \
  google/protobug/unittest_import_public_lite.pb.cc            \
  google/protobug/unittest_import_public_lite.pb.h

protoc_outputs =                                                  \
  $(protoc_lite_outputs)                                          \
  google/protobug/any_test.pb.cc                                  \
  google/protobug/any_test.pb.h                                   \
  google/protobug/compiler/cpp/cpp_test_bad_identifiers.pb.cc     \
  google/protobug/compiler/cpp/cpp_test_bad_identifiers.pb.h      \
  google/protobug/compiler/cpp/cpp_test_large_enum_value.pb.cc    \
  google/protobug/compiler/cpp/cpp_test_large_enum_value.pb.h     \
  google/protobug/map_proto2_unittest.pb.cc                       \
  google/protobug/map_proto2_unittest.pb.h                        \
  google/protobug/map_unittest.pb.cc                              \
  google/protobug/map_unittest.pb.h                               \
  google/protobug/unittest_arena.pb.cc                            \
  google/protobug/unittest_arena.pb.h                             \
  google/protobug/unittest_custom_options.pb.cc                   \
  google/protobug/unittest_custom_options.pb.h                    \
  google/protobug/unittest_drop_unknown_fields.pb.cc              \
  google/protobug/unittest_drop_unknown_fields.pb.h               \
  google/protobug/unittest_embed_optimize_for.pb.cc               \
  google/protobug/unittest_embed_optimize_for.pb.h                \
  google/protobug/unittest_empty.pb.cc                            \
  google/protobug/unittest_empty.pb.h                             \
  google/protobug/unittest_enormous_descriptor.pb.cc              \
  google/protobug/unittest_enormous_descriptor.pb.h               \
  google/protobug/unittest_import.pb.cc                           \
  google/protobug/unittest_import.pb.h                            \
  google/protobug/unittest_import_public.pb.cc                    \
  google/protobug/unittest_import_public.pb.h                     \
  google/protobug/unittest_lazy_dependencies.pb.cc                \
  google/protobug/unittest_lazy_dependencies.pb.h                 \
  google/protobug/unittest_lazy_dependencies_custom_option.pb.cc  \
  google/protobug/unittest_lazy_dependencies_custom_option.pb.h   \
  google/protobug/unittest_lazy_dependencies_enum.pb.cc           \
  google/protobug/unittest_lazy_dependencies_enum.pb.h            \
  google/protobug/unittest_lite_imports_nonlite.pb.cc             \
  google/protobug/unittest_lite_imports_nonlite.pb.h              \
  google/protobug/unittest_mset.pb.cc                             \
  google/protobug/unittest_mset.pb.h                              \
  google/protobug/unittest_mset_wire_format.pb.cc                 \
  google/protobug/unittest_mset_wire_format.pb.h                  \
  google/protobug/unittest_no_arena_import.pb.cc                  \
  google/protobug/unittest_no_arena_import.pb.h                   \
  google/protobug/unittest_no_arena.pb.cc                         \
  google/protobug/unittest_no_arena.pb.h                          \
  google/protobug/unittest_no_field_presence.pb.cc                \
  google/protobug/unittest_no_field_presence.pb.h                 \
  google/protobug/unittest_no_generic_services.pb.cc              \
  google/protobug/unittest_no_generic_services.pb.h               \
  google/protobug/unittest_optimize_for.pb.cc                     \
  google/protobug/unittest_optimize_for.pb.h                      \
  google/protobug/unittest.pb.cc                                  \
  google/protobug/unittest.pb.h                                   \
  google/protobug/unittest_preserve_unknown_enum2.pb.cc           \
  google/protobug/unittest_preserve_unknown_enum2.pb.h            \
  google/protobug/unittest_preserve_unknown_enum.pb.cc            \
  google/protobug/unittest_preserve_unknown_enum.pb.h             \
  google/protobug/unittest_proto3_arena.pb.cc                     \
  google/protobug/unittest_proto3_arena.pb.h                      \
  google/protobug/unittest_proto3_arena_lite.pb.cc                \
  google/protobug/unittest_proto3_arena_lite.pb.h                 \
  google/protobug/unittest_proto3_lite.pb.cc                      \
  google/protobug/unittest_proto3_lite.pb.h                       \
  google/protobug/unittest_well_known_types.pb.cc                 \
  google/protobug/unittest_well_known_types.pb.h                  \
  google/protobug/util/internal/testdata/anys.pb.cc               \
  google/protobug/util/internal/testdata/anys.pb.h                \
  google/protobug/util/internal/testdata/books.pb.cc              \
  google/protobug/util/internal/testdata/books.pb.h               \
  google/protobug/util/internal/testdata/default_value.pb.cc      \
  google/protobug/util/internal/testdata/default_value.pb.h       \
  google/protobug/util/internal/testdata/default_value_test.pb.cc \
  google/protobug/util/internal/testdata/default_value_test.pb.h  \
  google/protobug/util/internal/testdata/field_mask.pb.cc         \
  google/protobug/util/internal/testdata/field_mask.pb.h          \
  google/protobug/util/internal/testdata/maps.pb.cc               \
  google/protobug/util/internal/testdata/maps.pb.h                \
  google/protobug/util/internal/testdata/oneofs.pb.cc             \
  google/protobug/util/internal/testdata/oneofs.pb.h              \
  google/protobug/util/internal/testdata/proto3.pb.cc             \
  google/protobug/util/internal/testdata/proto3.pb.h              \
  google/protobug/util/internal/testdata/struct.pb.cc             \
  google/protobug/util/internal/testdata/struct.pb.h              \
  google/protobug/util/internal/testdata/timestamp_duration.pb.cc \
  google/protobug/util/internal/testdata/timestamp_duration.pb.h  \
  google/protobug/util/internal/testdata/wrappers.pb.cc           \
  google/protobug/util/internal/testdata/wrappers.pb.h            \
  google/protobug/util/json_format_proto3.pb.cc                   \
  google/protobug/util/json_format_proto3.pb.h                    \
  google/protobug/util/message_differencer_unittest.pb.cc         \
  google/protobug/util/message_differencer_unittest.pb.h

if USE_EXTERNAL_PROTOC

unittest_proto_middleman: $(protoc_inputs)
	$(PROTOC) -I$(srcdir) --cpp_out=. $^
	touch unittest_proto_middleman

else

# We have to cd to $(srcdir) before executing protoc because $(protoc_inputs) is
# relative to srcdir, which may not be the same as the current directory when
# building out-of-tree.
unittest_proto_middleman: protoc$(EXEEXT) $(protoc_inputs)
	oldpwd=`pwd` && ( cd $(srcdir) && $$oldpwd/protoc$(EXEEXT) -I. --cpp_out=$$oldpwd $(protoc_inputs) )
	touch unittest_proto_middleman

endif

$(protoc_outputs): unittest_proto_middleman

COMMON_TEST_SOURCES =                                          \
  google/protobug/arena_test_util.cc                           \
  google/protobug/arena_test_util.h                            \
  google/protobug/map_test_util.cc                             \
  google/protobug/map_test_util.h                              \
  google/protobug/map_test_util_impl.h                         \
  google/protobug/test_util.cc                                 \
  google/protobug/test_util.h                                  \
  google/protobug/test_util.inc                                \
  google/protobug/testing/googletest.cc                        \
  google/protobug/testing/googletest.h                         \
  google/protobug/testing/file.cc                              \
  google/protobug/testing/file.h

GOOGLETEST_BUILD_DIR=../third_party/googletest/googletest
GOOGLEMOCK_BUILD_DIR=../third_party/googletest/googlemock
GOOGLETEST_SRC_DIR=$(srcdir)/../third_party/googletest/googletest
GOOGLEMOCK_SRC_DIR=$(srcdir)/../third_party/googletest/googlemock
check_PROGRAMS = protoc protobuf-test protobuf-lazy-descriptor-test \
                 protobuf-lite-test test_plugin protobuf-lite-arena-test \
                 no-warning-test $(GZCHECKPROGRAMS)
protobuf_test_LDADD = $(PTHREAD_LIBS) libprotobuf.la libprotoc.la \
                      $(GOOGLETEST_BUILD_DIR)/lib/libgtest.la     \
                      $(GOOGLEMOCK_BUILD_DIR)/lib/libgmock.la     \
                      $(GOOGLEMOCK_BUILD_DIR)/lib/libgmock_main.la
protobuf_test_CPPFLAGS = -I$(GOOGLETEST_SRC_DIR)/include \
                         -I$(GOOGLEMOCK_SRC_DIR)/include
# Disable optimization for tests unless the user explicitly asked for it,
# since test_util.cc takes forever to compile with optimization (with GCC).
# See configure.ac for more info.
protobuf_test_CXXFLAGS = $(NO_OPT_CXXFLAGS)
protobuf_test_SOURCES =                                        \
  google/protobug/stubs/bytestream_unittest.cc                 \
  google/protobug/stubs/common_unittest.cc                     \
  google/protobug/stubs/int128_unittest.cc                     \
  google/protobug/stubs/io_win32_unittest.cc                   \
  google/protobug/stubs/statusor_test.cc                       \
  google/protobug/stubs/status_test.cc                         \
  google/protobug/stubs/stringpiece_unittest.cc                \
  google/protobug/stubs/stringprintf_unittest.cc               \
  google/protobug/stubs/structurally_valid_unittest.cc         \
  google/protobug/stubs/strutil_unittest.cc                    \
  google/protobug/stubs/template_util_unittest.cc              \
  google/protobug/stubs/time_test.cc                           \
  google/protobug/any_test.cc                                  \
  google/protobug/arenastring_unittest.cc                      \
  google/protobug/arena_unittest.cc                            \
  google/protobug/descriptor_database_unittest.cc              \
  google/protobug/descriptor_unittest.cc                       \
  google/protobug/drop_unknown_fields_test.cc                  \
  google/protobug/dynamic_message_unittest.cc                  \
  google/protobug/extension_set_unittest.cc                    \
  google/protobug/generated_message_reflection_unittest.cc     \
  google/protobug/map_field_test.cc                            \
  google/protobug/map_test.cc                                  \
  google/protobug/message_unittest.cc                          \
  google/protobug/message_unittest.inc                         \
  google/protobug/no_field_presence_test.cc                    \
  google/protobug/preserve_unknown_enum_test.cc                \
  google/protobug/proto3_arena_lite_unittest.cc                \
  google/protobug/proto3_arena_unittest.cc                     \
  google/protobug/proto3_lite_unittest.cc                      \
  google/protobug/reflection_ops_unittest.cc                   \
  google/protobug/repeated_field_reflection_unittest.cc        \
  google/protobug/repeated_field_unittest.cc                   \
  google/protobug/text_format_unittest.cc                      \
  google/protobug/unknown_field_set_unittest.cc                \
  google/protobug/well_known_types_unittest.cc                 \
  google/protobug/wire_format_unittest.cc                      \
  google/protobug/io/coded_stream_unittest.cc                  \
  google/protobug/io/printer_unittest.cc                       \
  google/protobug/io/tokenizer_unittest.cc                     \
  google/protobug/io/zero_copy_stream_unittest.cc              \
  google/protobug/compiler/annotation_test_util.h              \
  google/protobug/compiler/annotation_test_util.cc             \
  google/protobug/compiler/command_line_interface_unittest.cc  \
  google/protobug/compiler/importer_unittest.cc                \
  google/protobug/compiler/mock_code_generator.cc              \
  google/protobug/compiler/mock_code_generator.h               \
  google/protobug/compiler/parser_unittest.cc                  \
  google/protobug/compiler/cpp/cpp_bootstrap_unittest.cc       \
  google/protobug/compiler/cpp/cpp_move_unittest.cc            \
  google/protobug/compiler/cpp/cpp_unittest.h                  \
  google/protobug/compiler/cpp/cpp_unittest.cc                 \
  google/protobug/compiler/cpp/cpp_unittest.inc                \
  google/protobug/compiler/cpp/cpp_plugin_unittest.cc          \
  google/protobug/compiler/cpp/metadata_test.cc                \
  google/protobug/compiler/java/java_plugin_unittest.cc        \
  google/protobug/compiler/java/java_doc_comment_unittest.cc   \
  google/protobug/compiler/objectivec/objectivec_helpers_unittest.cc \
  google/protobug/compiler/python/python_plugin_unittest.cc    \
  google/protobug/compiler/ruby/ruby_generator_unittest.cc     \
  google/protobug/compiler/csharp/csharp_bootstrap_unittest.cc \
  google/protobug/compiler/csharp/csharp_generator_unittest.cc \
  google/protobug/util/delimited_message_util_test.cc          \
  google/protobug/util/field_comparator_test.cc                \
  google/protobug/util/field_mask_util_test.cc                 \
  google/protobug/util/internal/default_value_objectwriter_test.cc \
  google/protobug/util/internal/json_objectwriter_test.cc      \
  google/protobug/util/internal/json_stream_parser_test.cc     \
  google/protobug/util/internal/protostream_objectsource_test.cc \
  google/protobug/util/internal/protostream_objectwriter_test.cc \
  google/protobug/util/internal/type_info_test_helper.cc       \
  google/protobug/util/json_util_test.cc                       \
  google/protobug/util/message_differencer_unittest.cc         \
  google/protobug/util/time_util_test.cc                       \
  google/protobug/util/type_resolver_util_test.cc              \
  $(COMMON_TEST_SOURCES)
nodist_protobuf_test_SOURCES = $(protoc_outputs)
$(am_protobuf_test_OBJECTS): unittest_proto_middleman

# Run cpp_unittest again with PROTOBUF_TEST_NO_DESCRIPTORS defined.
protobuf_lazy_descriptor_test_LDADD = $(PTHREAD_LIBS) libprotobuf.la \
                      libprotoc.la                                   \
                      $(GOOGLETEST_BUILD_DIR)/lib/libgtest.la        \
                      $(GOOGLEMOCK_BUILD_DIR)/lib/libgmock.la        \
                      $(GOOGLEMOCK_BUILD_DIR)/lib/libgmock_main.la
protobuf_lazy_descriptor_test_CPPFLAGS = -I$(GOOGLEMOCK_SRC_DIR)/include \
                                         -I$(GOOGLETEST_SRC_DIR)/include \
                                         -DPROTOBUF_TEST_NO_DESCRIPTORS
protobuf_lazy_descriptor_test_CXXFLAGS = $(NO_OPT_CXXFLAGS)
protobuf_lazy_descriptor_test_SOURCES =                        \
  google/protobug/compiler/cpp/cpp_unittest.cc                 \
  $(COMMON_TEST_SOURCES)
nodist_protobuf_lazy_descriptor_test_SOURCES = $(protoc_outputs)
$(am_protobuf_lazy_descriptor_test_OBJECTS): unittest_proto_middleman

COMMON_LITE_TEST_SOURCES =                                             \
  google/protobug/arena_test_util.cc                                   \
  google/protobug/arena_test_util.h                                    \
  google/protobug/map_lite_test_util.cc                                \
  google/protobug/map_lite_test_util.h                                 \
  google/protobug/test_util_lite.cc                                    \
  google/protobug/test_util_lite.h

# Build lite_unittest separately, since it doesn't use gtest. It can't
# depend on gtest because our internal version of gtest depend on proto
# full runtime and we want to make sure this test builds without full
# runtime.
protobuf_lite_test_LDADD = $(PTHREAD_LIBS) libprotobuf-lite.la     \
                           $(GOOGLETEST_BUILD_DIR)/lib/libgtest.la \
                           $(GOOGLEMOCK_BUILD_DIR)/lib/libgmock.la \
                           $(GOOGLEMOCK_BUILD_DIR)/lib/libgmock_main.la
protobuf_lite_test_CPPFLAGS= -I$(GOOGLEMOCK_SRC_DIR)/include \
                             -I$(GOOGLETEST_SRC_DIR)/include
protobuf_lite_test_CXXFLAGS = $(NO_OPT_CXXFLAGS)
protobuf_lite_test_SOURCES =                                           \
  google/protobug/lite_unittest.cc                                     \
  $(COMMON_LITE_TEST_SOURCES)
nodist_protobuf_lite_test_SOURCES = $(protoc_lite_outputs)
$(am_protobuf_lite_test_OBJECTS): unittest_proto_middleman

# lite_arena_unittest depends on gtest because teboring@ found that without
# gtest when building the test internally our memory sanitizer doesn't detect
# memory leaks (don't know why).
protobuf_lite_arena_test_LDADD = $(PTHREAD_LIBS) libprotobuf-lite.la \
                      $(GOOGLETEST_BUILD_DIR)/lib/libgtest.la        \
                      $(GOOGLEMOCK_BUILD_DIR)/lib/libgmock.la        \
                      $(GOOGLEMOCK_BUILD_DIR)/lib/libgmock_main.la
protobuf_lite_arena_test_CPPFLAGS = -I$(GOOGLEMOCK_SRC_DIR)/include  \
                                    -I$(GOOGLETEST_SRC_DIR)/include
protobuf_lite_arena_test_CXXFLAGS = $(NO_OPT_CXXFLAGS)
protobuf_lite_arena_test_SOURCES =       \
  google/protobug/lite_arena_unittest.cc \
  $(COMMON_LITE_TEST_SOURCES)
nodist_protobuf_lite_arena_test_SOURCES = $(protoc_lite_outputs)
$(am_protobuf_lite_arena_test_OBJECTS): unittest_proto_middleman

# Test plugin binary.
test_plugin_LDADD = $(PTHREAD_LIBS) libprotobuf.la libprotoc.la \
                    $(GOOGLETEST_BUILD_DIR)/lib/libgtest.la
test_plugin_CPPFLAGS = -I$(GOOGLETEST_SRC_DIR)/include
test_plugin_SOURCES =                                          \
  google/protobug/compiler/mock_code_generator.cc              \
  google/protobug/testing/file.cc                              \
  google/protobug/testing/file.h                               \
  google/protobug/compiler/test_plugin.cc

if HAVE_ZLIB
zcgzip_LDADD = $(PTHREAD_LIBS) libprotobuf.la
zcgzip_SOURCES = google/protobug/testing/zcgzip.cc

zcgunzip_LDADD = $(PTHREAD_LIBS) libprotobuf.la
zcgunzip_SOURCES = google/protobug/testing/zcgunzip.cc
endif

# This test target is to ensure all our public header files and generated
# code is free from warnings. We have to be more pedantic about these
# files because they are compiled by users with different compiler flags.
no_warning_test.cc:
	echo "// Generated from Makefile.am" > no_warning_test.cc
	for FILE in $(nobase_include_HEADERS); do \
    echo "#include <$${FILE}>" >> no_warning_test.cc; \
	done
	echo "int main(int, char**) { return 0; }" >> no_warning_test.cc

no_warning_test_LDADD = $(PTHREAD_LIBS) libprotobuf.la libprotoc.la
no_warning_test_CXXFLAGS = $(PTHREAD_CFLAGS) $(PTHREAD_DEF) $(ZLIB_DEF) \
                           -Wall -Wextra -Werror -Wno-unused-parameter
nodist_no_warning_test_SOURCES = no_warning_test.cc $(protoc_outputs)

TESTS = protobuf-test protobuf-lazy-descriptor-test protobuf-lite-test \
        google/protobug/compiler/zip_output_unittest.sh $(GZTESTS)     \
        protobuf-lite-arena-test no-warning-test
