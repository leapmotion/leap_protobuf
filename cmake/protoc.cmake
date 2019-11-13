set(protoc_files
  ${leap_protobuf_source_dir}/src/google/leap_protobuf/compiler/main.cc
)

add_executable(protoc ${protoc_files})
target_link_libraries(protoc libleap_protobuf libprotoc)
add_executable(leap_protobuf::protoc ALIAS protoc)
