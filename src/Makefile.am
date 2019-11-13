## Process this file with automake to produce Makefile.in

if HAVE_ZLIB
GZCHECKPROGRAMS = zcgzip zcgunzip
GZHEADERS = google/leap_protobuf/io/gzip_stream.h
GZTESTS = google/leap_protobuf/io/gzip_stream_unittest.sh
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
nobase_dist_proto_DATA = google/leap_protobuf/descriptor.proto      \
                         google/leap_protobuf/any.proto             \
                         google/leap_protobuf/api.proto             \
                         google/leap_protobuf/duration.proto        \
                         google/leap_protobuf/empty.proto           \
                         google/leap_protobuf/field_mask.proto      \
                         google/leap_protobuf/source_context.proto  \
                         google/leap_protobuf/struct.proto          \
                         google/leap_protobuf/timestamp.proto       \
                         google/leap_protobuf/type.proto            \
                         google/leap_protobuf/wrappers.proto        \
                         google/leap_protobuf/compiler/plugin.proto

# Not sure why these don't get cleaned automatically.
clean-local:
	rm -f *.loT

CLEANFILES = $(protoc_outputs) unittest_proto_middleman \
             testzip.jar testzip.list testzip.proto testzip.zip \
             no_warning_test.cc \
             google/leap_protobuf/compiler/js/well_known_types_embed.cc \
             js_embed$(EXEEXT)

MAINTAINERCLEANFILES =   \
  Makefile.in

nobase_include_HEADERS =                                         \
  google/leap_protobuf/stubs/callback.h                               \
  google/leap_protobuf/stubs/bytestream.h                             \
  google/leap_protobuf/stubs/casts.h                                  \
  google/leap_protobuf/stubs/common.h                                 \
  google/leap_protobuf/stubs/fastmem.h                                \
  google/leap_protobuf/stubs/hash.h                                   \
  google/leap_protobuf/stubs/logging.h                                \
  google/leap_protobuf/stubs/macros.h                                 \
  google/leap_protobuf/stubs/mutex.h                                  \
  google/leap_protobuf/stubs/once.h                                   \
  google/leap_protobuf/stubs/platform_macros.h                        \
  google/leap_protobuf/stubs/port.h                                   \
  google/leap_protobuf/stubs/singleton.h                              \
  google/leap_protobuf/stubs/status.h                                 \
  google/leap_protobuf/stubs/stl_util.h                               \
  google/leap_protobuf/stubs/stringpiece.h                            \
  google/leap_protobuf/stubs/template_util.h                          \
  google/leap_protobuf/any.pb.h                                       \
  google/leap_protobuf/api.pb.h                                       \
  google/leap_protobuf/any.h                                          \
  google/leap_protobuf/arena.h                                        \
  google/leap_protobuf/arena_impl.h                                   \
  google/leap_protobuf/arenastring.h                                  \
  google/leap_protobuf/descriptor_database.h                          \
  google/leap_protobuf/descriptor.h                                   \
  google/leap_protobuf/descriptor.pb.h                                \
  google/leap_protobuf/duration.pb.h                                  \
  google/leap_protobuf/dynamic_message.h                              \
  google/leap_protobuf/empty.pb.h                                     \
  google/leap_protobuf/extension_set.h                                \
  google/leap_protobuf/field_mask.pb.h                                \
  google/leap_protobuf/generated_enum_reflection.h                    \
  google/leap_protobuf/generated_enum_util.h                          \
  google/leap_protobuf/generated_message_reflection.h                 \
  google/leap_protobuf/generated_message_table_driven.h               \
  google/leap_protobuf/generated_message_util.h                       \
  google/leap_protobuf/has_bits.h                                     \
  google/leap_protobuf/implicit_weak_message.h                        \
  google/leap_protobuf/inlined_string_field.h                         \
  google/leap_protobuf/map_entry.h                                    \
  google/leap_protobuf/map_entry_lite.h                               \
  google/leap_protobuf/map_field.h                                    \
  google/leap_protobuf/map_field_inl.h                                \
  google/leap_protobuf/map_field_lite.h                               \
  google/leap_protobuf/map.h                                          \
  google/leap_protobuf/map_type_handler.h                             \
  google/leap_protobuf/message.h                                      \
  google/leap_protobuf/message_lite.h                                 \
  google/leap_protobuf/metadata.h                                     \
  google/leap_protobuf/metadata_lite.h                                \
  google/leap_protobuf/reflection.h                                   \
  google/leap_protobuf/reflection_ops.h                               \
  google/leap_protobuf/repeated_field.h                               \
  google/leap_protobuf/service.h                                      \
  google/leap_protobuf/source_context.pb.h                            \
  google/leap_protobuf/struct.pb.h                                    \
  google/leap_protobuf/text_format.h                                  \
  google/leap_protobuf/timestamp.pb.h                                 \
  google/leap_protobuf/type.pb.h                                      \
  google/leap_protobuf/unknown_field_set.h                            \
  google/leap_protobuf/wire_format.h                                  \
  google/leap_protobuf/wire_format_lite.h                             \
  google/leap_protobuf/wire_format_lite_inl.h                         \
  google/leap_protobuf/wrappers.pb.h                                  \
  google/leap_protobuf/io/coded_stream.h                              \
  $(GZHEADERS)                                                   \
  google/leap_protobuf/io/printer.h                                   \
  google/leap_protobuf/io/strtod.h                                    \
  google/leap_protobuf/io/tokenizer.h                                 \
  google/leap_protobuf/io/zero_copy_stream.h                          \
  google/leap_protobuf/io/zero_copy_stream_impl.h                     \
  google/leap_protobuf/io/zero_copy_stream_impl_lite.h                \
  google/leap_protobuf/compiler/code_generator.h                      \
  google/leap_protobuf/compiler/command_line_interface.h              \
  google/leap_protobuf/compiler/importer.h                            \
  google/leap_protobuf/compiler/parser.h                              \
  google/leap_protobuf/compiler/plugin.h                              \
  google/leap_protobuf/compiler/plugin.pb.h                           \
  google/leap_protobuf/compiler/cpp/cpp_generator.h                   \
  google/leap_protobuf/compiler/csharp/csharp_generator.h             \
  google/leap_protobuf/compiler/csharp/csharp_names.h                 \
  google/leap_protobuf/compiler/java/java_generator.h                 \
  google/leap_protobuf/compiler/java/java_names.h                     \
  google/leap_protobuf/compiler/js/js_generator.h                     \
  google/leap_protobuf/compiler/js/well_known_types_embed.h           \
  google/leap_protobuf/compiler/objectivec/objectivec_generator.h     \
  google/leap_protobuf/compiler/objectivec/objectivec_helpers.h       \
  google/leap_protobuf/compiler/php/php_generator.h                   \
  google/leap_protobuf/compiler/python/python_generator.h             \
  google/leap_protobuf/compiler/ruby/ruby_generator.h                 \
  google/leap_protobuf/util/type_resolver.h                           \
  google/leap_protobuf/util/delimited_message_util.h                  \
  google/leap_protobuf/util/field_comparator.h                        \
  google/leap_protobuf/util/field_mask_util.h                         \
  google/leap_protobuf/util/json_util.h                               \
  google/leap_protobuf/util/time_util.h                               \
  google/leap_protobuf/util/type_resolver_util.h                      \
  google/leap_protobuf/util/message_differencer.h

lib_LTLIBRARIES = libprotobuf-lite.la libprotobuf.la libprotoc.la

libprotobuf_lite_la_LIBADD = $(PTHREAD_LIBS)
libprotobuf_lite_la_LDFLAGS = -version-info 16:0:0 -export-dynamic -no-undefined
if HAVE_LD_VERSION_SCRIPT
libprotobuf_lite_la_LDFLAGS += -Wl,--version-script=$(srcdir)/libprotobuf-lite.map
EXTRA_libprotobuf_lite_la_DEPENDENCIES = libprotobuf-lite.map
endif
libprotobuf_lite_la_SOURCES =                                  \
  google/leap_protobuf/stubs/bytestream.cc                          \
  google/leap_protobuf/stubs/bytestream.h                           \
  google/leap_protobuf/stubs/common.cc                              \
  google/leap_protobuf/stubs/hash.h                                 \
  google/leap_protobuf/stubs/int128.cc                              \
  google/leap_protobuf/stubs/int128.h                               \
  google/leap_protobuf/stubs/io_win32.cc                            \
  google/leap_protobuf/stubs/io_win32.h                             \
  google/leap_protobuf/stubs/map_util.h                             \
  google/leap_protobuf/stubs/mathutil.h                             \
  google/leap_protobuf/stubs/status.cc                              \
  google/leap_protobuf/stubs/status.h                               \
  google/leap_protobuf/stubs/status_macros.h                        \
  google/leap_protobuf/stubs/statusor.cc                            \
  google/leap_protobuf/stubs/statusor.h                             \
  google/leap_protobuf/stubs/stringpiece.cc                         \
  google/leap_protobuf/stubs/stringpiece.h                          \
  google/leap_protobuf/stubs/stringprintf.cc                        \
  google/leap_protobuf/stubs/stringprintf.h                         \
  google/leap_protobuf/stubs/structurally_valid.cc                  \
  google/leap_protobuf/stubs/strutil.cc                             \
  google/leap_protobuf/stubs/strutil.h                              \
  google/leap_protobuf/stubs/time.cc                                \
  google/leap_protobuf/stubs/time.h                                 \
  google/leap_protobuf/arena.cc                                     \
  google/leap_protobuf/arenastring.cc                               \
  google/leap_protobuf/extension_set.cc                             \
  google/leap_protobuf/generated_message_util.cc                    \
  google/leap_protobuf/generated_message_table_driven_lite.h        \
  google/leap_protobuf/generated_message_table_driven_lite.cc       \
  google/leap_protobuf/implicit_weak_message.cc                     \
  google/leap_protobuf/message_lite.cc                              \
  google/leap_protobuf/repeated_field.cc                            \
  google/leap_protobuf/wire_format_lite.cc                          \
  google/leap_protobuf/io/coded_stream.cc                           \
  google/leap_protobuf/io/coded_stream_inl.h                        \
  google/leap_protobuf/io/zero_copy_stream.cc                       \
  google/leap_protobuf/io/zero_copy_stream_impl_lite.cc

libprotobuf_la_LIBADD = $(PTHREAD_LIBS)
libprotobuf_la_LDFLAGS = -version-info 16:0:0 -export-dynamic -no-undefined
if HAVE_LD_VERSION_SCRIPT
libprotobuf_la_LDFLAGS += -Wl,--version-script=$(srcdir)/libprotobuf.map
EXTRA_libprotobuf_la_DEPENDENCIES = libprotobuf.map
endif
libprotobuf_la_SOURCES =                                       \
  $(libprotobuf_lite_la_SOURCES)                               \
  google/leap_protobuf/any.pb.cc                                    \
  google/leap_protobuf/api.pb.cc                                    \
  google/leap_protobuf/stubs/mathlimits.cc                          \
  google/leap_protobuf/stubs/mathlimits.h                           \
  google/leap_protobuf/any.cc                                       \
  google/leap_protobuf/descriptor.cc                                \
  google/leap_protobuf/descriptor_database.cc                       \
  google/leap_protobuf/descriptor.pb.cc                             \
  google/leap_protobuf/duration.pb.cc                               \
  google/leap_protobuf/dynamic_message.cc                           \
  google/leap_protobuf/empty.pb.cc                                  \
  google/leap_protobuf/extension_set_heavy.cc                       \
  google/leap_protobuf/field_mask.pb.cc                             \
  google/leap_protobuf/generated_message_reflection.cc              \
  google/leap_protobuf/generated_message_table_driven_lite.h        \
  google/leap_protobuf/generated_message_table_driven.cc            \
  google/leap_protobuf/map_field.cc                                 \
  google/leap_protobuf/message.cc                                   \
  google/leap_protobuf/reflection_internal.h                        \
  google/leap_protobuf/reflection_ops.cc                            \
  google/leap_protobuf/service.cc                                   \
  google/leap_protobuf/source_context.pb.cc                         \
  google/leap_protobuf/struct.pb.cc                                 \
  google/leap_protobuf/stubs/substitute.cc                          \
  google/leap_protobuf/stubs/substitute.h                           \
  google/leap_protobuf/text_format.cc                               \
  google/leap_protobuf/timestamp.pb.cc                              \
  google/leap_protobuf/type.pb.cc                                   \
  google/leap_protobuf/unknown_field_set.cc                         \
  google/leap_protobuf/wire_format.cc                               \
  google/leap_protobuf/wrappers.pb.cc                               \
  google/leap_protobuf/io/gzip_stream.cc                            \
  google/leap_protobuf/io/printer.cc                                \
  google/leap_protobuf/io/strtod.cc                                 \
  google/leap_protobuf/io/tokenizer.cc                              \
  google/leap_protobuf/io/zero_copy_stream_impl.cc                  \
  google/leap_protobuf/compiler/importer.cc                         \
  google/leap_protobuf/compiler/parser.cc                           \
  google/leap_protobuf/util/delimited_message_util.cc               \
  google/leap_protobuf/util/field_comparator.cc                     \
  google/leap_protobuf/util/field_mask_util.cc                      \
  google/leap_protobuf/util/internal/constants.h                    \
  google/leap_protobuf/util/internal/datapiece.cc                   \
  google/leap_protobuf/util/internal/datapiece.h                    \
  google/leap_protobuf/util/internal/default_value_objectwriter.cc  \
  google/leap_protobuf/util/internal/default_value_objectwriter.h   \
  google/leap_protobuf/util/internal/error_listener.cc              \
  google/leap_protobuf/util/internal/error_listener.h               \
  google/leap_protobuf/util/internal/expecting_objectwriter.h       \
  google/leap_protobuf/util/internal/field_mask_utility.cc          \
  google/leap_protobuf/util/internal/field_mask_utility.h           \
  google/leap_protobuf/util/internal/json_escaping.cc               \
  google/leap_protobuf/util/internal/json_escaping.h                \
  google/leap_protobuf/util/internal/json_objectwriter.cc           \
  google/leap_protobuf/util/internal/json_objectwriter.h            \
  google/leap_protobuf/util/internal/json_stream_parser.cc          \
  google/leap_protobuf/util/internal/json_stream_parser.h           \
  google/leap_protobuf/util/internal/location_tracker.h             \
  google/leap_protobuf/util/internal/mock_error_listener.h          \
  google/leap_protobuf/util/internal/object_location_tracker.h      \
  google/leap_protobuf/util/internal/object_source.h                \
  google/leap_protobuf/util/internal/object_writer.cc               \
  google/leap_protobuf/util/internal/object_writer.h                \
  google/leap_protobuf/util/internal/protostream_objectsource.cc    \
  google/leap_protobuf/util/internal/protostream_objectsource.h     \
  google/leap_protobuf/util/internal/protostream_objectwriter.cc    \
  google/leap_protobuf/util/internal/protostream_objectwriter.h     \
  google/leap_protobuf/util/internal/proto_writer.cc                \
  google/leap_protobuf/util/internal/proto_writer.h                 \
  google/leap_protobuf/util/internal/structured_objectwriter.h      \
  google/leap_protobuf/util/internal/type_info.cc                   \
  google/leap_protobuf/util/internal/type_info.h                    \
  google/leap_protobuf/util/internal/type_info_test_helper.cc       \
  google/leap_protobuf/util/internal/type_info_test_helper.h        \
  google/leap_protobuf/util/internal/utility.cc                     \
  google/leap_protobuf/util/internal/utility.h                      \
  google/leap_protobuf/util/json_util.cc                            \
  google/leap_protobuf/util/message_differencer.cc                  \
  google/leap_protobuf/util/time_util.cc                            \
  google/leap_protobuf/util/type_resolver_util.cc

nodist_libprotobuf_la_SOURCES = $(nodist_libprotobuf_lite_la_SOURCES)

libprotoc_la_LIBADD = $(PTHREAD_LIBS) libprotobuf.la
libprotoc_la_LDFLAGS = -version-info 16:0:0 -export-dynamic -no-undefined
if HAVE_LD_VERSION_SCRIPT
libprotoc_la_LDFLAGS += -Wl,--version-script=$(srcdir)/libprotoc.map
EXTRA_libprotoc_la_DEPENDENCIES = libprotoc.map
endif
libprotoc_la_SOURCES =                                         \
  google/leap_protobuf/compiler/code_generator.cc                   \
  google/leap_protobuf/compiler/command_line_interface.cc           \
  google/leap_protobuf/compiler/plugin.cc                           \
  google/leap_protobuf/compiler/plugin.pb.cc                        \
  google/leap_protobuf/compiler/subprocess.cc                       \
  google/leap_protobuf/compiler/subprocess.h                        \
  google/leap_protobuf/compiler/zip_writer.cc                       \
  google/leap_protobuf/compiler/zip_writer.h                        \
  google/leap_protobuf/compiler/cpp/cpp_enum.cc                     \
  google/leap_protobuf/compiler/cpp/cpp_enum.h                      \
  google/leap_protobuf/compiler/cpp/cpp_enum_field.cc               \
  google/leap_protobuf/compiler/cpp/cpp_enum_field.h                \
  google/leap_protobuf/compiler/cpp/cpp_extension.cc                \
  google/leap_protobuf/compiler/cpp/cpp_extension.h                 \
  google/leap_protobuf/compiler/cpp/cpp_field.cc                    \
  google/leap_protobuf/compiler/cpp/cpp_field.h                     \
  google/leap_protobuf/compiler/cpp/cpp_file.cc                     \
  google/leap_protobuf/compiler/cpp/cpp_file.h                      \
  google/leap_protobuf/compiler/cpp/cpp_generator.cc                \
  google/leap_protobuf/compiler/cpp/cpp_helpers.cc                  \
  google/leap_protobuf/compiler/cpp/cpp_helpers.h                   \
  google/leap_protobuf/compiler/cpp/cpp_map_field.cc                \
  google/leap_protobuf/compiler/cpp/cpp_map_field.h                 \
  google/leap_protobuf/compiler/cpp/cpp_message.cc                  \
  google/leap_protobuf/compiler/cpp/cpp_message.h                   \
  google/leap_protobuf/compiler/cpp/cpp_message_field.cc            \
  google/leap_protobuf/compiler/cpp/cpp_message_field.h             \
  google/leap_protobuf/compiler/cpp/cpp_message_layout_helper.h     \
  google/leap_protobuf/compiler/cpp/cpp_options.h                   \
  google/leap_protobuf/compiler/cpp/cpp_padding_optimizer.cc        \
  google/leap_protobuf/compiler/cpp/cpp_padding_optimizer.h         \
  google/leap_protobuf/compiler/cpp/cpp_primitive_field.cc          \
  google/leap_protobuf/compiler/cpp/cpp_primitive_field.h           \
  google/leap_protobuf/compiler/cpp/cpp_service.cc                  \
  google/leap_protobuf/compiler/cpp/cpp_service.h                   \
  google/leap_protobuf/compiler/cpp/cpp_string_field.cc             \
  google/leap_protobuf/compiler/cpp/cpp_string_field.h              \
  google/leap_protobuf/compiler/java/java_context.cc                \
  google/leap_protobuf/compiler/java/java_context.h                 \
  google/leap_protobuf/compiler/java/java_enum.cc                   \
  google/leap_protobuf/compiler/java/java_enum_lite.cc              \
  google/leap_protobuf/compiler/java/java_enum_field.cc             \
  google/leap_protobuf/compiler/java/java_enum_field.h              \
  google/leap_protobuf/compiler/java/java_enum_field_lite.cc        \
  google/leap_protobuf/compiler/java/java_enum_field_lite.h         \
  google/leap_protobuf/compiler/java/java_enum.h                    \
  google/leap_protobuf/compiler/java/java_enum_lite.h               \
  google/leap_protobuf/compiler/java/java_extension.cc              \
  google/leap_protobuf/compiler/java/java_extension.h               \
  google/leap_protobuf/compiler/java/java_extension_lite.cc         \
  google/leap_protobuf/compiler/java/java_extension_lite.h          \
  google/leap_protobuf/compiler/java/java_field.cc                  \
  google/leap_protobuf/compiler/java/java_field.h                   \
  google/leap_protobuf/compiler/java/java_file.cc                   \
  google/leap_protobuf/compiler/java/java_file.h                    \
  google/leap_protobuf/compiler/java/java_generator.cc              \
  google/leap_protobuf/compiler/java/java_generator_factory.cc      \
  google/leap_protobuf/compiler/java/java_generator_factory.h       \
  google/leap_protobuf/compiler/java/java_helpers.cc                \
  google/leap_protobuf/compiler/java/java_helpers.h                 \
  google/leap_protobuf/compiler/java/java_lazy_message_field.cc     \
  google/leap_protobuf/compiler/java/java_lazy_message_field.h      \
  google/leap_protobuf/compiler/java/java_lazy_message_field_lite.cc\
  google/leap_protobuf/compiler/java/java_lazy_message_field_lite.h \
  google/leap_protobuf/compiler/java/java_map_field.cc              \
  google/leap_protobuf/compiler/java/java_map_field.h               \
  google/leap_protobuf/compiler/java/java_map_field_lite.cc         \
  google/leap_protobuf/compiler/java/java_map_field_lite.h          \
  google/leap_protobuf/compiler/java/java_message.cc                \
  google/leap_protobuf/compiler/java/java_message_lite.cc           \
  google/leap_protobuf/compiler/java/java_message_builder.cc        \
  google/leap_protobuf/compiler/java/java_message_builder_lite.cc   \
  google/leap_protobuf/compiler/java/java_message_field.cc          \
  google/leap_protobuf/compiler/java/java_message_field.h           \
  google/leap_protobuf/compiler/java/java_message_field_lite.cc     \
  google/leap_protobuf/compiler/java/java_message_field_lite.h      \
  google/leap_protobuf/compiler/java/java_message.h                 \
  google/leap_protobuf/compiler/java/java_message_lite.h            \
  google/leap_protobuf/compiler/java/java_message_builder.h         \
  google/leap_protobuf/compiler/java/java_message_builder_lite.h    \
  google/leap_protobuf/compiler/java/java_name_resolver.cc          \
  google/leap_protobuf/compiler/java/java_name_resolver.h           \
  google/leap_protobuf/compiler/java/java_options.h                 \
  google/leap_protobuf/compiler/java/java_primitive_field.cc        \
  google/leap_protobuf/compiler/java/java_primitive_field.h         \
  google/leap_protobuf/compiler/java/java_primitive_field_lite.cc   \
  google/leap_protobuf/compiler/java/java_primitive_field_lite.h    \
  google/leap_protobuf/compiler/java/java_shared_code_generator.cc  \
  google/leap_protobuf/compiler/java/java_shared_code_generator.h   \
  google/leap_protobuf/compiler/java/java_service.cc                \
  google/leap_protobuf/compiler/java/java_service.h                 \
  google/leap_protobuf/compiler/java/java_string_field.cc           \
  google/leap_protobuf/compiler/java/java_string_field.h            \
  google/leap_protobuf/compiler/java/java_string_field_lite.cc      \
  google/leap_protobuf/compiler/java/java_string_field_lite.h       \
  google/leap_protobuf/compiler/java/java_doc_comment.cc            \
  google/leap_protobuf/compiler/java/java_doc_comment.h             \
  google/leap_protobuf/compiler/js/js_generator.cc                  \
  google/leap_protobuf/compiler/js/well_known_types_embed.cc        \
  google/leap_protobuf/compiler/objectivec/objectivec_enum.cc       \
  google/leap_protobuf/compiler/objectivec/objectivec_enum.h        \
  google/leap_protobuf/compiler/objectivec/objectivec_enum_field.cc \
  google/leap_protobuf/compiler/objectivec/objectivec_enum_field.h  \
  google/leap_protobuf/compiler/objectivec/objectivec_extension.cc  \
  google/leap_protobuf/compiler/objectivec/objectivec_extension.h   \
  google/leap_protobuf/compiler/objectivec/objectivec_field.cc      \
  google/leap_protobuf/compiler/objectivec/objectivec_field.h       \
  google/leap_protobuf/compiler/objectivec/objectivec_file.cc       \
  google/leap_protobuf/compiler/objectivec/objectivec_file.h        \
  google/leap_protobuf/compiler/objectivec/objectivec_generator.cc  \
  google/leap_protobuf/compiler/objectivec/objectivec_helpers.cc    \
  google/leap_protobuf/compiler/objectivec/objectivec_helpers.h     \
  google/leap_protobuf/compiler/objectivec/objectivec_map_field.cc  \
  google/leap_protobuf/compiler/objectivec/objectivec_map_field.h   \
  google/leap_protobuf/compiler/objectivec/objectivec_message.cc    \
  google/leap_protobuf/compiler/objectivec/objectivec_message.h     \
  google/leap_protobuf/compiler/objectivec/objectivec_message_field.cc \
  google/leap_protobuf/compiler/objectivec/objectivec_message_field.h \
  google/leap_protobuf/compiler/objectivec/objectivec_oneof.cc      \
  google/leap_protobuf/compiler/objectivec/objectivec_oneof.h       \
  google/leap_protobuf/compiler/objectivec/objectivec_primitive_field.cc \
  google/leap_protobuf/compiler/objectivec/objectivec_primitive_field.h \
  google/leap_protobuf/compiler/php/php_generator.cc                \
  google/leap_protobuf/compiler/python/python_generator.cc          \
  google/leap_protobuf/compiler/ruby/ruby_generator.cc              \
  google/leap_protobuf/compiler/csharp/csharp_doc_comment.cc        \
  google/leap_protobuf/compiler/csharp/csharp_doc_comment.h         \
  google/leap_protobuf/compiler/csharp/csharp_enum.cc               \
  google/leap_protobuf/compiler/csharp/csharp_enum.h                \
  google/leap_protobuf/compiler/csharp/csharp_enum_field.cc         \
  google/leap_protobuf/compiler/csharp/csharp_enum_field.h          \
  google/leap_protobuf/compiler/csharp/csharp_field_base.cc         \
  google/leap_protobuf/compiler/csharp/csharp_field_base.h          \
  google/leap_protobuf/compiler/csharp/csharp_generator.cc          \
  google/leap_protobuf/compiler/csharp/csharp_helpers.cc            \
  google/leap_protobuf/compiler/csharp/csharp_helpers.h             \
  google/leap_protobuf/compiler/csharp/csharp_map_field.cc          \
  google/leap_protobuf/compiler/csharp/csharp_map_field.h           \
  google/leap_protobuf/compiler/csharp/csharp_message.cc            \
  google/leap_protobuf/compiler/csharp/csharp_message.h             \
  google/leap_protobuf/compiler/csharp/csharp_message_field.cc      \
  google/leap_protobuf/compiler/csharp/csharp_message_field.h       \
  google/leap_protobuf/compiler/csharp/csharp_options.h             \
  google/leap_protobuf/compiler/csharp/csharp_primitive_field.cc    \
  google/leap_protobuf/compiler/csharp/csharp_primitive_field.h     \
  google/leap_protobuf/compiler/csharp/csharp_reflection_class.cc     \
  google/leap_protobuf/compiler/csharp/csharp_reflection_class.h      \
  google/leap_protobuf/compiler/csharp/csharp_repeated_enum_field.cc \
  google/leap_protobuf/compiler/csharp/csharp_repeated_enum_field.h \
  google/leap_protobuf/compiler/csharp/csharp_repeated_message_field.cc \
  google/leap_protobuf/compiler/csharp/csharp_repeated_message_field.h \
  google/leap_protobuf/compiler/csharp/csharp_repeated_primitive_field.cc \
  google/leap_protobuf/compiler/csharp/csharp_repeated_primitive_field.h \
  google/leap_protobuf/compiler/csharp/csharp_source_generator_base.cc \
  google/leap_protobuf/compiler/csharp/csharp_source_generator_base.h \
  google/leap_protobuf/compiler/csharp/csharp_wrapper_field.cc      \
  google/leap_protobuf/compiler/csharp/csharp_wrapper_field.h

bin_PROGRAMS = protoc
protoc_LDADD = $(PTHREAD_LIBS) libprotobuf.la libprotoc.la
protoc_SOURCES = google/leap_protobuf/compiler/main.cc

# The special JS code for the well-known types is linked into the compiler via
# well_known_types_embed.cc, which is generated from .js source files. We have
# to build the js_embed binary using $(CXX_FOR_BUILD) so that it is executable
# on the build machine in a cross-compilation setup.
js_embed$(EXEEXT): $(srcdir)/google/leap_protobuf/compiler/js/embed.cc
	$(CXX_FOR_BUILD) -o $@ $<
js_well_known_types_sources =                                  \
	google/leap_protobuf/compiler/js/well_known_types/any.js          \
	google/leap_protobuf/compiler/js/well_known_types/struct.js       \
	google/leap_protobuf/compiler/js/well_known_types/timestamp.js
# We have to cd to $(srcdir) so that out-of-tree builds work properly.
google/leap_protobuf/compiler/js/well_known_types_embed.cc: js_embed$(EXEEXT) $(js_well_known_types_sources)
	mkdir -p `dirname $@` && \
	oldpwd=`pwd` && cd $(srcdir) && \
	$$oldpwd/js_embed$(EXEEXT) $(js_well_known_types_sources) > $$oldpwd/$@

# Tests ==============================================================

protoc_inputs =                                                   \
  google/leap_protobuf/any_test.proto                                  \
  google/leap_protobuf/compiler/cpp/cpp_test_bad_identifiers.proto     \
  google/leap_protobuf/map_lite_unittest.proto                         \
  google/leap_protobuf/map_proto2_unittest.proto                       \
  google/leap_protobuf/map_unittest.proto                              \
  google/leap_protobuf/unittest_arena.proto                            \
  google/leap_protobuf/unittest_custom_options.proto                   \
  google/leap_protobuf/unittest_drop_unknown_fields.proto              \
  google/leap_protobuf/unittest_embed_optimize_for.proto               \
  google/leap_protobuf/unittest_empty.proto                            \
  google/leap_protobuf/unittest_enormous_descriptor.proto              \
  google/leap_protobuf/unittest_import_lite.proto                      \
  google/leap_protobuf/unittest_import.proto                           \
  google/leap_protobuf/unittest_import_public_lite.proto               \
  google/leap_protobuf/unittest_import_public.proto                    \
  google/leap_protobuf/unittest_lazy_dependencies.proto                \
  google/leap_protobuf/unittest_lazy_dependencies_custom_option.proto  \
  google/leap_protobuf/unittest_lazy_dependencies_enum.proto           \
  google/leap_protobuf/unittest_lite_imports_nonlite.proto             \
  google/leap_protobuf/unittest_lite.proto                             \
  google/leap_protobuf/unittest_mset.proto                             \
  google/leap_protobuf/unittest_mset_wire_format.proto                 \
  google/leap_protobuf/unittest_no_arena_lite.proto                    \
  google/leap_protobuf/unittest_no_arena_import.proto                  \
  google/leap_protobuf/unittest_no_arena.proto                         \
  google/leap_protobuf/unittest_no_field_presence.proto                \
  google/leap_protobuf/unittest_no_generic_services.proto              \
  google/leap_protobuf/unittest_optimize_for.proto                     \
  google/leap_protobuf/unittest_preserve_unknown_enum2.proto           \
  google/leap_protobuf/unittest_preserve_unknown_enum.proto            \
  google/leap_protobuf/unittest.proto                                  \
  google/leap_protobuf/unittest_proto3_arena.proto                     \
  google/leap_protobuf/unittest_proto3_arena_lite.proto                \
  google/leap_protobuf/unittest_proto3_lite.proto                      \
  google/leap_protobuf/unittest_well_known_types.proto                 \
  google/leap_protobuf/util/internal/testdata/anys.proto               \
  google/leap_protobuf/util/internal/testdata/books.proto              \
  google/leap_protobuf/util/internal/testdata/default_value.proto      \
  google/leap_protobuf/util/internal/testdata/default_value_test.proto \
  google/leap_protobuf/util/internal/testdata/field_mask.proto         \
  google/leap_protobuf/util/internal/testdata/maps.proto               \
  google/leap_protobuf/util/internal/testdata/oneofs.proto             \
  google/leap_protobuf/util/internal/testdata/proto3.proto             \
  google/leap_protobuf/util/internal/testdata/struct.proto             \
  google/leap_protobuf/util/internal/testdata/timestamp_duration.proto \
  google/leap_protobuf/util/internal/testdata/wrappers.proto           \
  google/leap_protobuf/util/json_format_proto3.proto                   \
  google/leap_protobuf/util/message_differencer_unittest.proto         \
  google/leap_protobuf/compiler/cpp/cpp_test_large_enum_value.proto

EXTRA_DIST =                                                   \
  $(protoc_inputs)                                             \
  $(js_well_known_types_sources)                               \
  solaris/libstdc++.la                                         \
  google/leap_protobuf/unittest_proto3.proto                        \
  google/leap_protobuf/test_messages_proto3.proto                   \
  google/leap_protobuf/test_messages_proto2.proto                   \
  google/leap_protobuf/io/gzip_stream.h                             \
  google/leap_protobuf/io/gzip_stream_unittest.sh                   \
  google/leap_protobuf/testdata/golden_message                      \
  google/leap_protobuf/testdata/golden_message_maps                 \
  google/leap_protobuf/testdata/golden_message_oneof_implemented    \
  google/leap_protobuf/testdata/golden_message_proto3               \
  google/leap_protobuf/testdata/golden_packed_fields_message        \
  google/leap_protobuf/testdata/bad_utf8_string                     \
  google/leap_protobuf/testdata/map_test_data.txt                   \
  google/leap_protobuf/testdata/text_format_unittest_data.txt       \
  google/leap_protobuf/testdata/text_format_unittest_data_oneof_implemented.txt  \
  google/leap_protobuf/testdata/text_format_unittest_data_pointy.txt             \
  google/leap_protobuf/testdata/text_format_unittest_data_pointy_oneof.txt       \
  google/leap_protobuf/testdata/text_format_unittest_extensions_data.txt         \
  google/leap_protobuf/testdata/text_format_unittest_extensions_data_pointy.txt  \
  google/leap_protobuf/package_info.h                               \
  google/leap_protobuf/io/package_info.h                            \
  google/leap_protobuf/util/package_info.h                          \
  google/leap_protobuf/compiler/js/embed.cc                         \
  google/leap_protobuf/compiler/ruby/ruby_generated_code.proto      \
  google/leap_protobuf/compiler/ruby/ruby_generated_code_pb.rb      \
  google/leap_protobuf/compiler/package_info.h                      \
  google/leap_protobuf/compiler/zip_output_unittest.sh              \
  libprotobuf-lite.map                                         \
  libprotobuf.map                                              \
  libprotoc.map                                                \
  README.md

protoc_lite_outputs =                                          \
  google/leap_protobuf/map_lite_unittest.pb.cc                      \
  google/leap_protobuf/map_lite_unittest.pb.h                       \
  google/leap_protobuf/unittest_lite.pb.cc                          \
  google/leap_protobuf/unittest_lite.pb.h                           \
  google/leap_protobuf/unittest_no_arena_lite.pb.cc                 \
  google/leap_protobuf/unittest_no_arena_lite.pb.h                  \
  google/leap_protobuf/unittest_import_lite.pb.cc                   \
  google/leap_protobuf/unittest_import_lite.pb.h                    \
  google/leap_protobuf/unittest_import_public_lite.pb.cc            \
  google/leap_protobuf/unittest_import_public_lite.pb.h

protoc_outputs =                                                  \
  $(protoc_lite_outputs)                                          \
  google/leap_protobuf/any_test.pb.cc                                  \
  google/leap_protobuf/any_test.pb.h                                   \
  google/leap_protobuf/compiler/cpp/cpp_test_bad_identifiers.pb.cc     \
  google/leap_protobuf/compiler/cpp/cpp_test_bad_identifiers.pb.h      \
  google/leap_protobuf/compiler/cpp/cpp_test_large_enum_value.pb.cc    \
  google/leap_protobuf/compiler/cpp/cpp_test_large_enum_value.pb.h     \
  google/leap_protobuf/map_proto2_unittest.pb.cc                       \
  google/leap_protobuf/map_proto2_unittest.pb.h                        \
  google/leap_protobuf/map_unittest.pb.cc                              \
  google/leap_protobuf/map_unittest.pb.h                               \
  google/leap_protobuf/unittest_arena.pb.cc                            \
  google/leap_protobuf/unittest_arena.pb.h                             \
  google/leap_protobuf/unittest_custom_options.pb.cc                   \
  google/leap_protobuf/unittest_custom_options.pb.h                    \
  google/leap_protobuf/unittest_drop_unknown_fields.pb.cc              \
  google/leap_protobuf/unittest_drop_unknown_fields.pb.h               \
  google/leap_protobuf/unittest_embed_optimize_for.pb.cc               \
  google/leap_protobuf/unittest_embed_optimize_for.pb.h                \
  google/leap_protobuf/unittest_empty.pb.cc                            \
  google/leap_protobuf/unittest_empty.pb.h                             \
  google/leap_protobuf/unittest_enormous_descriptor.pb.cc              \
  google/leap_protobuf/unittest_enormous_descriptor.pb.h               \
  google/leap_protobuf/unittest_import.pb.cc                           \
  google/leap_protobuf/unittest_import.pb.h                            \
  google/leap_protobuf/unittest_import_public.pb.cc                    \
  google/leap_protobuf/unittest_import_public.pb.h                     \
  google/leap_protobuf/unittest_lazy_dependencies.pb.cc                \
  google/leap_protobuf/unittest_lazy_dependencies.pb.h                 \
  google/leap_protobuf/unittest_lazy_dependencies_custom_option.pb.cc  \
  google/leap_protobuf/unittest_lazy_dependencies_custom_option.pb.h   \
  google/leap_protobuf/unittest_lazy_dependencies_enum.pb.cc           \
  google/leap_protobuf/unittest_lazy_dependencies_enum.pb.h            \
  google/leap_protobuf/unittest_lite_imports_nonlite.pb.cc             \
  google/leap_protobuf/unittest_lite_imports_nonlite.pb.h              \
  google/leap_protobuf/unittest_mset.pb.cc                             \
  google/leap_protobuf/unittest_mset.pb.h                              \
  google/leap_protobuf/unittest_mset_wire_format.pb.cc                 \
  google/leap_protobuf/unittest_mset_wire_format.pb.h                  \
  google/leap_protobuf/unittest_no_arena_import.pb.cc                  \
  google/leap_protobuf/unittest_no_arena_import.pb.h                   \
  google/leap_protobuf/unittest_no_arena.pb.cc                         \
  google/leap_protobuf/unittest_no_arena.pb.h                          \
  google/leap_protobuf/unittest_no_field_presence.pb.cc                \
  google/leap_protobuf/unittest_no_field_presence.pb.h                 \
  google/leap_protobuf/unittest_no_generic_services.pb.cc              \
  google/leap_protobuf/unittest_no_generic_services.pb.h               \
  google/leap_protobuf/unittest_optimize_for.pb.cc                     \
  google/leap_protobuf/unittest_optimize_for.pb.h                      \
  google/leap_protobuf/unittest.pb.cc                                  \
  google/leap_protobuf/unittest.pb.h                                   \
  google/leap_protobuf/unittest_preserve_unknown_enum2.pb.cc           \
  google/leap_protobuf/unittest_preserve_unknown_enum2.pb.h            \
  google/leap_protobuf/unittest_preserve_unknown_enum.pb.cc            \
  google/leap_protobuf/unittest_preserve_unknown_enum.pb.h             \
  google/leap_protobuf/unittest_proto3_arena.pb.cc                     \
  google/leap_protobuf/unittest_proto3_arena.pb.h                      \
  google/leap_protobuf/unittest_proto3_arena_lite.pb.cc                \
  google/leap_protobuf/unittest_proto3_arena_lite.pb.h                 \
  google/leap_protobuf/unittest_proto3_lite.pb.cc                      \
  google/leap_protobuf/unittest_proto3_lite.pb.h                       \
  google/leap_protobuf/unittest_well_known_types.pb.cc                 \
  google/leap_protobuf/unittest_well_known_types.pb.h                  \
  google/leap_protobuf/util/internal/testdata/anys.pb.cc               \
  google/leap_protobuf/util/internal/testdata/anys.pb.h                \
  google/leap_protobuf/util/internal/testdata/books.pb.cc              \
  google/leap_protobuf/util/internal/testdata/books.pb.h               \
  google/leap_protobuf/util/internal/testdata/default_value.pb.cc      \
  google/leap_protobuf/util/internal/testdata/default_value.pb.h       \
  google/leap_protobuf/util/internal/testdata/default_value_test.pb.cc \
  google/leap_protobuf/util/internal/testdata/default_value_test.pb.h  \
  google/leap_protobuf/util/internal/testdata/field_mask.pb.cc         \
  google/leap_protobuf/util/internal/testdata/field_mask.pb.h          \
  google/leap_protobuf/util/internal/testdata/maps.pb.cc               \
  google/leap_protobuf/util/internal/testdata/maps.pb.h                \
  google/leap_protobuf/util/internal/testdata/oneofs.pb.cc             \
  google/leap_protobuf/util/internal/testdata/oneofs.pb.h              \
  google/leap_protobuf/util/internal/testdata/proto3.pb.cc             \
  google/leap_protobuf/util/internal/testdata/proto3.pb.h              \
  google/leap_protobuf/util/internal/testdata/struct.pb.cc             \
  google/leap_protobuf/util/internal/testdata/struct.pb.h              \
  google/leap_protobuf/util/internal/testdata/timestamp_duration.pb.cc \
  google/leap_protobuf/util/internal/testdata/timestamp_duration.pb.h  \
  google/leap_protobuf/util/internal/testdata/wrappers.pb.cc           \
  google/leap_protobuf/util/internal/testdata/wrappers.pb.h            \
  google/leap_protobuf/util/json_format_proto3.pb.cc                   \
  google/leap_protobuf/util/json_format_proto3.pb.h                    \
  google/leap_protobuf/util/message_differencer_unittest.pb.cc         \
  google/leap_protobuf/util/message_differencer_unittest.pb.h

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
  google/leap_protobuf/arena_test_util.cc                           \
  google/leap_protobuf/arena_test_util.h                            \
  google/leap_protobuf/map_test_util.cc                             \
  google/leap_protobuf/map_test_util.h                              \
  google/leap_protobuf/map_test_util_impl.h                         \
  google/leap_protobuf/test_util.cc                                 \
  google/leap_protobuf/test_util.h                                  \
  google/leap_protobuf/test_util.inc                                \
  google/leap_protobuf/testing/googletest.cc                        \
  google/leap_protobuf/testing/googletest.h                         \
  google/leap_protobuf/testing/file.cc                              \
  google/leap_protobuf/testing/file.h

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
  google/leap_protobuf/stubs/bytestream_unittest.cc                 \
  google/leap_protobuf/stubs/common_unittest.cc                     \
  google/leap_protobuf/stubs/int128_unittest.cc                     \
  google/leap_protobuf/stubs/io_win32_unittest.cc                   \
  google/leap_protobuf/stubs/statusor_test.cc                       \
  google/leap_protobuf/stubs/status_test.cc                         \
  google/leap_protobuf/stubs/stringpiece_unittest.cc                \
  google/leap_protobuf/stubs/stringprintf_unittest.cc               \
  google/leap_protobuf/stubs/structurally_valid_unittest.cc         \
  google/leap_protobuf/stubs/strutil_unittest.cc                    \
  google/leap_protobuf/stubs/template_util_unittest.cc              \
  google/leap_protobuf/stubs/time_test.cc                           \
  google/leap_protobuf/any_test.cc                                  \
  google/leap_protobuf/arenastring_unittest.cc                      \
  google/leap_protobuf/arena_unittest.cc                            \
  google/leap_protobuf/descriptor_database_unittest.cc              \
  google/leap_protobuf/descriptor_unittest.cc                       \
  google/leap_protobuf/drop_unknown_fields_test.cc                  \
  google/leap_protobuf/dynamic_message_unittest.cc                  \
  google/leap_protobuf/extension_set_unittest.cc                    \
  google/leap_protobuf/generated_message_reflection_unittest.cc     \
  google/leap_protobuf/map_field_test.cc                            \
  google/leap_protobuf/map_test.cc                                  \
  google/leap_protobuf/message_unittest.cc                          \
  google/leap_protobuf/message_unittest.inc                         \
  google/leap_protobuf/no_field_presence_test.cc                    \
  google/leap_protobuf/preserve_unknown_enum_test.cc                \
  google/leap_protobuf/proto3_arena_lite_unittest.cc                \
  google/leap_protobuf/proto3_arena_unittest.cc                     \
  google/leap_protobuf/proto3_lite_unittest.cc                      \
  google/leap_protobuf/reflection_ops_unittest.cc                   \
  google/leap_protobuf/repeated_field_reflection_unittest.cc        \
  google/leap_protobuf/repeated_field_unittest.cc                   \
  google/leap_protobuf/text_format_unittest.cc                      \
  google/leap_protobuf/unknown_field_set_unittest.cc                \
  google/leap_protobuf/well_known_types_unittest.cc                 \
  google/leap_protobuf/wire_format_unittest.cc                      \
  google/leap_protobuf/io/coded_stream_unittest.cc                  \
  google/leap_protobuf/io/printer_unittest.cc                       \
  google/leap_protobuf/io/tokenizer_unittest.cc                     \
  google/leap_protobuf/io/zero_copy_stream_unittest.cc              \
  google/leap_protobuf/compiler/annotation_test_util.h              \
  google/leap_protobuf/compiler/annotation_test_util.cc             \
  google/leap_protobuf/compiler/command_line_interface_unittest.cc  \
  google/leap_protobuf/compiler/importer_unittest.cc                \
  google/leap_protobuf/compiler/mock_code_generator.cc              \
  google/leap_protobuf/compiler/mock_code_generator.h               \
  google/leap_protobuf/compiler/parser_unittest.cc                  \
  google/leap_protobuf/compiler/cpp/cpp_bootstrap_unittest.cc       \
  google/leap_protobuf/compiler/cpp/cpp_move_unittest.cc            \
  google/leap_protobuf/compiler/cpp/cpp_unittest.h                  \
  google/leap_protobuf/compiler/cpp/cpp_unittest.cc                 \
  google/leap_protobuf/compiler/cpp/cpp_unittest.inc                \
  google/leap_protobuf/compiler/cpp/cpp_plugin_unittest.cc          \
  google/leap_protobuf/compiler/cpp/metadata_test.cc                \
  google/leap_protobuf/compiler/java/java_plugin_unittest.cc        \
  google/leap_protobuf/compiler/java/java_doc_comment_unittest.cc   \
  google/leap_protobuf/compiler/objectivec/objectivec_helpers_unittest.cc \
  google/leap_protobuf/compiler/python/python_plugin_unittest.cc    \
  google/leap_protobuf/compiler/ruby/ruby_generator_unittest.cc     \
  google/leap_protobuf/compiler/csharp/csharp_bootstrap_unittest.cc \
  google/leap_protobuf/compiler/csharp/csharp_generator_unittest.cc \
  google/leap_protobuf/util/delimited_message_util_test.cc          \
  google/leap_protobuf/util/field_comparator_test.cc                \
  google/leap_protobuf/util/field_mask_util_test.cc                 \
  google/leap_protobuf/util/internal/default_value_objectwriter_test.cc \
  google/leap_protobuf/util/internal/json_objectwriter_test.cc      \
  google/leap_protobuf/util/internal/json_stream_parser_test.cc     \
  google/leap_protobuf/util/internal/protostream_objectsource_test.cc \
  google/leap_protobuf/util/internal/protostream_objectwriter_test.cc \
  google/leap_protobuf/util/internal/type_info_test_helper.cc       \
  google/leap_protobuf/util/json_util_test.cc                       \
  google/leap_protobuf/util/message_differencer_unittest.cc         \
  google/leap_protobuf/util/time_util_test.cc                       \
  google/leap_protobuf/util/type_resolver_util_test.cc              \
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
  google/leap_protobuf/compiler/cpp/cpp_unittest.cc                 \
  $(COMMON_TEST_SOURCES)
nodist_protobuf_lazy_descriptor_test_SOURCES = $(protoc_outputs)
$(am_protobuf_lazy_descriptor_test_OBJECTS): unittest_proto_middleman

COMMON_LITE_TEST_SOURCES =                                             \
  google/leap_protobuf/arena_test_util.cc                                   \
  google/leap_protobuf/arena_test_util.h                                    \
  google/leap_protobuf/map_lite_test_util.cc                                \
  google/leap_protobuf/map_lite_test_util.h                                 \
  google/leap_protobuf/test_util_lite.cc                                    \
  google/leap_protobuf/test_util_lite.h

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
  google/leap_protobuf/lite_unittest.cc                                     \
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
  google/leap_protobuf/lite_arena_unittest.cc \
  $(COMMON_LITE_TEST_SOURCES)
nodist_protobuf_lite_arena_test_SOURCES = $(protoc_lite_outputs)
$(am_protobuf_lite_arena_test_OBJECTS): unittest_proto_middleman

# Test plugin binary.
test_plugin_LDADD = $(PTHREAD_LIBS) libprotobuf.la libprotoc.la \
                    $(GOOGLETEST_BUILD_DIR)/lib/libgtest.la
test_plugin_CPPFLAGS = -I$(GOOGLETEST_SRC_DIR)/include
test_plugin_SOURCES =                                          \
  google/leap_protobuf/compiler/mock_code_generator.cc              \
  google/leap_protobuf/testing/file.cc                              \
  google/leap_protobuf/testing/file.h                               \
  google/leap_protobuf/compiler/test_plugin.cc

if HAVE_ZLIB
zcgzip_LDADD = $(PTHREAD_LIBS) libprotobuf.la
zcgzip_SOURCES = google/leap_protobuf/testing/zcgzip.cc

zcgunzip_LDADD = $(PTHREAD_LIBS) libprotobuf.la
zcgunzip_SOURCES = google/leap_protobuf/testing/zcgunzip.cc
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
        google/leap_protobuf/compiler/zip_output_unittest.sh $(GZTESTS)     \
        protobuf-lite-arena-test no-warning-test
