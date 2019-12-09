set(protoc_files
  ${protobuf_source_dir}/src/google/protobug/compiler/main.cc
)

add_executable(protoc ${protoc_files})
target_link_libraries(protoc libprotobuf libprotoc)
add_executable(leap_protobuf::protoc ALIAS protoc)
