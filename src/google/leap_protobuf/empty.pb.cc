// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/leap_protobuf/empty.proto

#include <google/leap_protobuf/empty.pb.h>

#include <algorithm>

#include <google/leap_protobuf/stubs/common.h>
#include <google/leap_protobuf/stubs/port.h>
#include <google/leap_protobuf/io/coded_stream.h>
#include <google/leap_protobuf/wire_format_lite_inl.h>
#include <google/leap_protobuf/descriptor.h>
#include <google/leap_protobuf/generated_message_reflection.h>
#include <google/leap_protobuf/reflection_ops.h>
#include <google/leap_protobuf/wire_format.h>
// This is a temporary google only hack
#ifdef GOOGLE_PROTOBUF_ENFORCE_UNIQUENESS
#include "third_party/protobuf/version.h"
#endif
// @@protoc_insertion_point(includes)

namespace google {
namespace leap_protobuf {
class EmptyDefaultTypeInternal {
 public:
  ::google::leap_protobuf::internal::ExplicitlyConstructed<Empty>
      _instance;
} _Empty_default_instance_;
}  // namespace leap_protobuf
}  // namespace google
namespace protobuf_google_2fprotobuf_2fempty_2eproto {
static void InitDefaultsEmpty() {
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  {
    void* ptr = &::google::leap_protobuf::_Empty_default_instance_;
    new (ptr) ::google::leap_protobuf::Empty();
    ::google::leap_protobuf::internal::OnShutdownDestroyMessage(ptr);
  }
  ::google::leap_protobuf::Empty::InitAsDefaultInstance();
}

LIBPROTOBUF_EXPORT ::google::leap_protobuf::internal::SCCInfo<0> scc_info_Empty =
    {{ATOMIC_VAR_INIT(::google::leap_protobuf::internal::SCCInfoBase::kUninitialized), 0, InitDefaultsEmpty}, {}};

void InitDefaults() {
  ::google::leap_protobuf::internal::InitSCC(&scc_info_Empty.base);
}

::google::leap_protobuf::Metadata file_level_metadata[1];

const ::google::leap_protobuf::uint32 TableStruct::offsets[] GOOGLE_PROTOBUF_ATTRIBUTE_SECTION_VARIABLE(protodesc_cold) = {
  ~0u,  // no _has_bits_
  GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(::google::leap_protobuf::Empty, _internal_metadata_),
  ~0u,  // no _extensions_
  ~0u,  // no _oneof_case_
  ~0u,  // no _weak_field_map_
};
static const ::google::leap_protobuf::internal::MigrationSchema schemas[] GOOGLE_PROTOBUF_ATTRIBUTE_SECTION_VARIABLE(protodesc_cold) = {
  { 0, -1, sizeof(::google::leap_protobuf::Empty)},
};

static ::google::leap_protobuf::Message const * const file_default_instances[] = {
  reinterpret_cast<const ::google::leap_protobuf::Message*>(&::google::leap_protobuf::_Empty_default_instance_),
};

void protobuf_AssignDescriptors() {
  AddDescriptors();
  AssignDescriptors(
      "google/leap_protobuf/empty.proto", schemas, file_default_instances, TableStruct::offsets,
      file_level_metadata, NULL, NULL);
}

void protobuf_AssignDescriptorsOnce() {
  static ::google::leap_protobuf::internal::once_flag once;
  ::google::leap_protobuf::internal::call_once(once, protobuf_AssignDescriptors);
}

void protobuf_RegisterTypes(const ::std::string&) GOOGLE_PROTOBUF_ATTRIBUTE_COLD;
void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
  ::google::leap_protobuf::internal::RegisterAllTypes(file_level_metadata, 1);
}

void AddDescriptorsImpl() {
  InitDefaults();
  static const char descriptor[] GOOGLE_PROTOBUF_ATTRIBUTE_SECTION_VARIABLE(protodesc_cold) = {
      "\n\033google/leap_protobuf/empty.proto\022\017google.pr"
      "otobuf\"\007\n\005EmptyBv\n\023com.google.protobufB\n"
      "EmptyProtoP\001Z\'github.com/golang/protobuf"
      "/ptypes/empty\370\001\001\242\002\003GPB\252\002\036Google.Protobuf"
      ".WellKnownTypesb\006proto3"
  };
  ::google::leap_protobuf::DescriptorPool::InternalAddGeneratedFile(
      descriptor, 183);
  ::google::leap_protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "google/leap_protobuf/empty.proto", &protobuf_RegisterTypes);
}

void AddDescriptors() {
  static ::google::leap_protobuf::internal::once_flag once;
  ::google::leap_protobuf::internal::call_once(once, AddDescriptorsImpl);
}
// Force AddDescriptors() to be called at dynamic initialization time.
struct StaticDescriptorInitializer {
  StaticDescriptorInitializer() {
    AddDescriptors();
  }
} static_descriptor_initializer;
}  // namespace protobuf_google_2fprotobuf_2fempty_2eproto
namespace google {
namespace leap_protobuf {

// ===================================================================

void Empty::InitAsDefaultInstance() {
}
#if !defined(_MSC_VER) || _MSC_VER >= 1900
#endif  // !defined(_MSC_VER) || _MSC_VER >= 1900

Empty::Empty()
  : ::google::leap_protobuf::Message(), _internal_metadata_(NULL) {
  ::google::leap_protobuf::internal::InitSCC(
      &protobuf_google_2fprotobuf_2fempty_2eproto::scc_info_Empty.base);
  SharedCtor();
  // @@protoc_insertion_point(constructor:google.protobuf.Empty)
}
Empty::Empty(::google::leap_protobuf::Arena* arena)
  : ::google::leap_protobuf::Message(),
  _internal_metadata_(arena) {
  ::google::leap_protobuf::internal::InitSCC(&protobuf_google_2fprotobuf_2fempty_2eproto::scc_info_Empty.base);
  SharedCtor();
  RegisterArenaDtor(arena);
  // @@protoc_insertion_point(arena_constructor:google.protobuf.Empty)
}
Empty::Empty(const Empty& from)
  : ::google::leap_protobuf::Message(),
      _internal_metadata_(NULL) {
  _internal_metadata_.MergeFrom(from._internal_metadata_);
  // @@protoc_insertion_point(copy_constructor:google.protobuf.Empty)
}

void Empty::SharedCtor() {
}

Empty::~Empty() {
  // @@protoc_insertion_point(destructor:google.protobuf.Empty)
  SharedDtor();
}

void Empty::SharedDtor() {
  GOOGLE_DCHECK(GetArenaNoVirtual() == NULL);
}

void Empty::ArenaDtor(void* object) {
  Empty* _this = reinterpret_cast< Empty* >(object);
  (void)_this;
}
void Empty::RegisterArenaDtor(::google::leap_protobuf::Arena* arena) {
}
void Empty::SetCachedSize(int size) const {
  _cached_size_.Set(size);
}
const ::google::leap_protobuf::Descriptor* Empty::descriptor() {
  ::protobuf_google_2fprotobuf_2fempty_2eproto::protobuf_AssignDescriptorsOnce();
  return ::protobuf_google_2fprotobuf_2fempty_2eproto::file_level_metadata[kIndexInFileMessages].descriptor;
}

const Empty& Empty::default_instance() {
  ::google::leap_protobuf::internal::InitSCC(&protobuf_google_2fprotobuf_2fempty_2eproto::scc_info_Empty.base);
  return *internal_default_instance();
}


void Empty::Clear() {
// @@protoc_insertion_point(message_clear_start:google.protobuf.Empty)
  ::google::leap_protobuf::uint32 cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  _internal_metadata_.Clear();
}

bool Empty::MergePartialFromCodedStream(
    ::google::leap_protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!GOOGLE_PREDICT_TRUE(EXPRESSION)) goto failure
  ::google::leap_protobuf::uint32 tag;
  // @@protoc_insertion_point(parse_start:google.protobuf.Empty)
  for (;;) {
    ::std::pair<::google::leap_protobuf::uint32, bool> p = input->ReadTagWithCutoffNoLastTag(127u);
    tag = p.first;
    if (!p.second) goto handle_unusual;
  handle_unusual:
    if (tag == 0) {
      goto success;
    }
    DO_(::google::leap_protobuf::internal::WireFormat::SkipField(
          input, tag, _internal_metadata_.mutable_unknown_fields()));
  }
success:
  // @@protoc_insertion_point(parse_success:google.protobuf.Empty)
  return true;
failure:
  // @@protoc_insertion_point(parse_failure:google.protobuf.Empty)
  return false;
#undef DO_
}

void Empty::SerializeWithCachedSizes(
    ::google::leap_protobuf::io::CodedOutputStream* output) const {
  // @@protoc_insertion_point(serialize_start:google.protobuf.Empty)
  ::google::leap_protobuf::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  if ((_internal_metadata_.have_unknown_fields() &&  ::google::leap_protobuf::internal::GetProto3PreserveUnknownsDefault())) {
    ::google::leap_protobuf::internal::WireFormat::SerializeUnknownFields(
        (::google::leap_protobuf::internal::GetProto3PreserveUnknownsDefault()   ? _internal_metadata_.unknown_fields()   : _internal_metadata_.default_instance()), output);
  }
  // @@protoc_insertion_point(serialize_end:google.protobuf.Empty)
}

::google::leap_protobuf::uint8* Empty::InternalSerializeWithCachedSizesToArray(
    bool deterministic, ::google::leap_protobuf::uint8* target) const {
  (void)deterministic; // Unused
  // @@protoc_insertion_point(serialize_to_array_start:google.protobuf.Empty)
  ::google::leap_protobuf::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  if ((_internal_metadata_.have_unknown_fields() &&  ::google::leap_protobuf::internal::GetProto3PreserveUnknownsDefault())) {
    target = ::google::leap_protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        (::google::leap_protobuf::internal::GetProto3PreserveUnknownsDefault()   ? _internal_metadata_.unknown_fields()   : _internal_metadata_.default_instance()), target);
  }
  // @@protoc_insertion_point(serialize_to_array_end:google.protobuf.Empty)
  return target;
}

size_t Empty::ByteSizeLong() const {
// @@protoc_insertion_point(message_byte_size_start:google.protobuf.Empty)
  size_t total_size = 0;

  if ((_internal_metadata_.have_unknown_fields() &&  ::google::leap_protobuf::internal::GetProto3PreserveUnknownsDefault())) {
    total_size +=
      ::google::leap_protobuf::internal::WireFormat::ComputeUnknownFieldsSize(
        (::google::leap_protobuf::internal::GetProto3PreserveUnknownsDefault()   ? _internal_metadata_.unknown_fields()   : _internal_metadata_.default_instance()));
  }
  int cached_size = ::google::leap_protobuf::internal::ToCachedSize(total_size);
  SetCachedSize(cached_size);
  return total_size;
}

void Empty::MergeFrom(const ::google::leap_protobuf::Message& from) {
// @@protoc_insertion_point(generalized_merge_from_start:google.protobuf.Empty)
  GOOGLE_DCHECK_NE(&from, this);
  const Empty* source =
      ::google::leap_protobuf::internal::DynamicCastToGenerated<const Empty>(
          &from);
  if (source == NULL) {
  // @@protoc_insertion_point(generalized_merge_from_cast_fail:google.protobuf.Empty)
    ::google::leap_protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
  // @@protoc_insertion_point(generalized_merge_from_cast_success:google.protobuf.Empty)
    MergeFrom(*source);
  }
}

void Empty::MergeFrom(const Empty& from) {
// @@protoc_insertion_point(class_specific_merge_from_start:google.protobuf.Empty)
  GOOGLE_DCHECK_NE(&from, this);
  _internal_metadata_.MergeFrom(from._internal_metadata_);
  ::google::leap_protobuf::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

}

void Empty::CopyFrom(const ::google::leap_protobuf::Message& from) {
// @@protoc_insertion_point(generalized_copy_from_start:google.protobuf.Empty)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void Empty::CopyFrom(const Empty& from) {
// @@protoc_insertion_point(class_specific_copy_from_start:google.protobuf.Empty)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool Empty::IsInitialized() const {
  return true;
}

void Empty::Swap(Empty* other) {
  if (other == this) return;
  if (GetArenaNoVirtual() == other->GetArenaNoVirtual()) {
    InternalSwap(other);
  } else {
    Empty* temp = New(GetArenaNoVirtual());
    temp->MergeFrom(*other);
    other->CopyFrom(*this);
    InternalSwap(temp);
    if (GetArenaNoVirtual() == NULL) {
      delete temp;
    }
  }
}
void Empty::UnsafeArenaSwap(Empty* other) {
  if (other == this) return;
  GOOGLE_DCHECK(GetArenaNoVirtual() == other->GetArenaNoVirtual());
  InternalSwap(other);
}
void Empty::InternalSwap(Empty* other) {
  using std::swap;
  _internal_metadata_.Swap(&other->_internal_metadata_);
}

::google::leap_protobuf::Metadata Empty::GetMetadata() const {
  protobuf_google_2fprotobuf_2fempty_2eproto::protobuf_AssignDescriptorsOnce();
  return ::protobuf_google_2fprotobuf_2fempty_2eproto::file_level_metadata[kIndexInFileMessages];
}


// @@protoc_insertion_point(namespace_scope)
}  // namespace leap_protobuf
}  // namespace google
namespace google {
namespace leap_protobuf {
template<> GOOGLE_PROTOBUF_ATTRIBUTE_NOINLINE ::google::leap_protobuf::Empty* Arena::CreateMaybeMessage< ::google::leap_protobuf::Empty >(Arena* arena) {
  return Arena::CreateMessageInternal< ::google::leap_protobuf::Empty >(arena);
}
}  // namespace leap_protobuf
}  // namespace google

// @@protoc_insertion_point(global_scope)
