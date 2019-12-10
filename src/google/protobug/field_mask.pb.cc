// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/protobug/field_mask.proto

#include <google/protobug/field_mask.pb.h>

#include <algorithm>

#include <google/protobug/stubs/common.h>
#include <google/protobug/stubs/port.h>
#include <google/protobug/io/coded_stream.h>
#include <google/protobug/wire_format_lite_inl.h>
#include <google/protobug/descriptor.h>
#include <google/protobug/generated_message_reflection.h>
#include <google/protobug/reflection_ops.h>
#include <google/protobug/wire_format.h>
// This is a temporary google only hack
#ifdef GOOGLE_PROTOBUG_ENFORCE_UNIQUENESS
#include "third_party/protobuf/version.h"
#endif
// @@protoc_insertion_point(includes)

namespace google {
namespace protobug {
class FieldMaskDefaultTypeInternal {
 public:
  ::google::protobug::internal::ExplicitlyConstructed<FieldMask>
      _instance;
} _FieldMask_default_instance_;
}  // namespace protobug
}  // namespace google
namespace protobuf_google_2fprotobug_2ffield_5fmask_2eproto {
static void InitDefaultsFieldMask() {
  GOOGLE_PROTOBUG_VERIFY_VERSION;

  {
    void* ptr = &::google::protobug::_FieldMask_default_instance_;
    new (ptr) ::google::protobug::FieldMask();
    ::google::protobug::internal::OnShutdownDestroyMessage(ptr);
  }
  ::google::protobug::FieldMask::InitAsDefaultInstance();
}

LIBPROTOBUF_EXPORT ::google::protobug::internal::SCCInfo<0> scc_info_FieldMask =
    {{ATOMIC_VAR_INIT(::google::protobug::internal::SCCInfoBase::kUninitialized), 0, InitDefaultsFieldMask}, {}};

void InitDefaults() {
  ::google::protobug::internal::InitSCC(&scc_info_FieldMask.base);
}

::google::protobug::Metadata file_level_metadata[1];

const ::google::protobug::uint32 TableStruct::offsets[] GOOGLE_PROTOBUG_ATTRIBUTE_SECTION_VARIABLE(protodesc_cold) = {
  ~0u,  // no _has_bits_
  GOOGLE_PROTOBUG_GENERATED_MESSAGE_FIELD_OFFSET(::google::protobug::FieldMask, _internal_metadata_),
  ~0u,  // no _extensions_
  ~0u,  // no _oneof_case_
  ~0u,  // no _weak_field_map_
  GOOGLE_PROTOBUG_GENERATED_MESSAGE_FIELD_OFFSET(::google::protobug::FieldMask, paths_),
};
static const ::google::protobug::internal::MigrationSchema schemas[] GOOGLE_PROTOBUG_ATTRIBUTE_SECTION_VARIABLE(protodesc_cold) = {
  { 0, -1, sizeof(::google::protobug::FieldMask)},
};

static ::google::protobug::Message const * const file_default_instances[] = {
  reinterpret_cast<const ::google::protobug::Message*>(&::google::protobug::_FieldMask_default_instance_),
};

void protobug_AssignDescriptors() {
  AddDescriptors();
  AssignDescriptors(
      "google/protobug/field_mask.proto", schemas, file_default_instances, TableStruct::offsets,
      file_level_metadata, NULL, NULL);
}

void protobug_AssignDescriptorsOnce() {
  static ::google::protobug::internal::once_flag once;
  ::google::protobug::internal::call_once(once, protobug_AssignDescriptors);
}

void protobuf_RegisterTypes(const ::std::string&) GOOGLE_PROTOBUG_ATTRIBUTE_COLD;
void protobuf_RegisterTypes(const ::std::string&) {
  protobug_AssignDescriptorsOnce();
  ::google::protobug::internal::RegisterAllTypes(file_level_metadata, 1);
}

void AddDescriptorsImpl() {
  InitDefaults();
  static const char descriptor[] GOOGLE_PROTOBUG_ATTRIBUTE_SECTION_VARIABLE(protodesc_cold) = {
      "\n google/protobug/field_mask.proto\022\017google.protobug\"\032\n\tFieldMask\022\r\n\005paths\030\001 \003(\tB"
      "\211\001\n\023com.google.protobugB\016FieldMaskProtoP"
      "\001Z9google.golang.org/genproto/protobuf/f"
      "ield_mask;field_mask\242\002\003GPB\252\002\036Google.Prot"
      "obuf.WellKnownTypesb\006proto3"
  };
  ::google::protobug::DescriptorPool::InternalAddGeneratedFile(
      descriptor, 227);
  ::google::protobug::MessageFactory::InternalRegisterGeneratedFile(
    "google/protobug/field_mask.proto", &protobuf_RegisterTypes);
}

void AddDescriptors() {
  static ::google::protobug::internal::once_flag once;
  ::google::protobug::internal::call_once(once, AddDescriptorsImpl);
}
// Force AddDescriptors() to be called at dynamic initialization time.
struct StaticDescriptorInitializer {
  StaticDescriptorInitializer() {
    AddDescriptors();
  }
} static_descriptor_initializer;
}  // namespace protobuf_google_2fprotobug_2ffield_5fmask_2eproto
namespace google {
namespace protobug {

// ===================================================================

void FieldMask::InitAsDefaultInstance() {
}
#if !defined(_MSC_VER) || _MSC_VER >= 1900
const int FieldMask::kPathsFieldNumber;
#endif  // !defined(_MSC_VER) || _MSC_VER >= 1900

FieldMask::FieldMask()
  : ::google::protobug::Message(), _internal_metadata_(NULL) {
  ::google::protobug::internal::InitSCC(
      &protobuf_google_2fprotobug_2ffield_5fmask_2eproto::scc_info_FieldMask.base);
  SharedCtor();
  // @@protoc_insertion_point(constructor:google.protobug.FieldMask)
}
FieldMask::FieldMask(const FieldMask& from)
  : ::google::protobug::Message(),
      _internal_metadata_(NULL),
      paths_(from.paths_) {
  _internal_metadata_.MergeFrom(from._internal_metadata_);
  // @@protoc_insertion_point(copy_constructor:google.protobug.FieldMask)
}

void FieldMask::SharedCtor() {
}

FieldMask::~FieldMask() {
  // @@protoc_insertion_point(destructor:google.protobug.FieldMask)
  SharedDtor();
}

void FieldMask::SharedDtor() {
}

void FieldMask::SetCachedSize(int size) const {
  _cached_size_.Set(size);
}
const ::google::protobug::Descriptor* FieldMask::descriptor() {
  ::protobuf_google_2fprotobug_2ffield_5fmask_2eproto::protobug_AssignDescriptorsOnce();
  return ::protobuf_google_2fprotobug_2ffield_5fmask_2eproto::file_level_metadata[kIndexInFileMessages].descriptor;
}

const FieldMask& FieldMask::default_instance() {
  ::google::protobug::internal::InitSCC(&protobuf_google_2fprotobug_2ffield_5fmask_2eproto::scc_info_FieldMask.base);
  return *internal_default_instance();
}


void FieldMask::Clear() {
// @@protoc_insertion_point(message_clear_start:google.protobug.FieldMask)
  ::google::protobug::uint32 cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  paths_.Clear();
  _internal_metadata_.Clear();
}

bool FieldMask::MergePartialFromCodedStream(
    ::google::protobug::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!GOOGLE_PREDICT_TRUE(EXPRESSION)) goto failure
  ::google::protobug::uint32 tag;
  // @@protoc_insertion_point(parse_start:google.protobug.FieldMask)
  for (;;) {
    ::std::pair<::google::protobug::uint32, bool> p = input->ReadTagWithCutoffNoLastTag(127u);
    tag = p.first;
    if (!p.second) goto handle_unusual;
    switch (::google::protobug::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // repeated string paths = 1;
      case 1: {
        if (static_cast< ::google::protobug::uint8>(tag) ==
            static_cast< ::google::protobug::uint8>(10u /* 10 & 0xFF */)) {
          DO_(::google::protobug::internal::WireFormatLite::ReadString(
                input, this->add_paths()));
          DO_(::google::protobug::internal::WireFormatLite::VerifyUtf8String(
            this->paths(this->paths_size() - 1).data(),
            static_cast<int>(this->paths(this->paths_size() - 1).length()),
            ::google::protobug::internal::WireFormatLite::PARSE,
            "google.protobug.FieldMask.paths"));
        } else {
          goto handle_unusual;
        }
        break;
      }

      default: {
      handle_unusual:
        if (tag == 0) {
          goto success;
        }
        DO_(::google::protobug::internal::WireFormat::SkipField(
              input, tag, _internal_metadata_.mutable_unknown_fields()));
        break;
      }
    }
  }
success:
  // @@protoc_insertion_point(parse_success:google.protobug.FieldMask)
  return true;
failure:
  // @@protoc_insertion_point(parse_failure:google.protobug.FieldMask)
  return false;
#undef DO_
}

void FieldMask::SerializeWithCachedSizes(
    ::google::protobug::io::CodedOutputStream* output) const {
  // @@protoc_insertion_point(serialize_start:google.protobug.FieldMask)
  ::google::protobug::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  // repeated string paths = 1;
  for (int i = 0, n = this->paths_size(); i < n; i++) {
    ::google::protobug::internal::WireFormatLite::VerifyUtf8String(
      this->paths(i).data(), static_cast<int>(this->paths(i).length()),
      ::google::protobug::internal::WireFormatLite::SERIALIZE,
      "google.protobug.FieldMask.paths");
    ::google::protobug::internal::WireFormatLite::WriteString(
      1, this->paths(i), output);
  }

  if ((_internal_metadata_.have_unknown_fields() &&  ::google::protobug::internal::GetProto3PreserveUnknownsDefault())) {
    ::google::protobug::internal::WireFormat::SerializeUnknownFields(
        (::google::protobug::internal::GetProto3PreserveUnknownsDefault()   ? _internal_metadata_.unknown_fields()   : _internal_metadata_.default_instance()), output);
  }
  // @@protoc_insertion_point(serialize_end:google.protobug.FieldMask)
}

::google::protobug::uint8* FieldMask::InternalSerializeWithCachedSizesToArray(
    bool deterministic, ::google::protobug::uint8* target) const {
  (void)deterministic; // Unused
  // @@protoc_insertion_point(serialize_to_array_start:google.protobug.FieldMask)
  ::google::protobug::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  // repeated string paths = 1;
  for (int i = 0, n = this->paths_size(); i < n; i++) {
    ::google::protobug::internal::WireFormatLite::VerifyUtf8String(
      this->paths(i).data(), static_cast<int>(this->paths(i).length()),
      ::google::protobug::internal::WireFormatLite::SERIALIZE,
      "google.protobug.FieldMask.paths");
    target = ::google::protobug::internal::WireFormatLite::
      WriteStringToArray(1, this->paths(i), target);
  }

  if ((_internal_metadata_.have_unknown_fields() &&  ::google::protobug::internal::GetProto3PreserveUnknownsDefault())) {
    target = ::google::protobug::internal::WireFormat::SerializeUnknownFieldsToArray(
        (::google::protobug::internal::GetProto3PreserveUnknownsDefault()   ? _internal_metadata_.unknown_fields()   : _internal_metadata_.default_instance()), target);
  }
  // @@protoc_insertion_point(serialize_to_array_end:google.protobug.FieldMask)
  return target;
}

size_t FieldMask::ByteSizeLong() const {
// @@protoc_insertion_point(message_byte_size_start:google.protobug.FieldMask)
  size_t total_size = 0;

  if ((_internal_metadata_.have_unknown_fields() &&  ::google::protobug::internal::GetProto3PreserveUnknownsDefault())) {
    total_size +=
      ::google::protobug::internal::WireFormat::ComputeUnknownFieldsSize(
        (::google::protobug::internal::GetProto3PreserveUnknownsDefault()   ? _internal_metadata_.unknown_fields()   : _internal_metadata_.default_instance()));
  }
  // repeated string paths = 1;
  total_size += 1 *
      ::google::protobug::internal::FromIntSize(this->paths_size());
  for (int i = 0, n = this->paths_size(); i < n; i++) {
    total_size += ::google::protobug::internal::WireFormatLite::StringSize(
      this->paths(i));
  }

  int cached_size = ::google::protobug::internal::ToCachedSize(total_size);
  SetCachedSize(cached_size);
  return total_size;
}

void FieldMask::MergeFrom(const ::google::protobug::Message& from) {
// @@protoc_insertion_point(generalized_merge_from_start:google.protobug.FieldMask)
  GOOGLE_DCHECK_NE(&from, this);
  const FieldMask* source =
      ::google::protobug::internal::DynamicCastToGenerated<const FieldMask>(
          &from);
  if (source == NULL) {
  // @@protoc_insertion_point(generalized_merge_from_cast_fail:google.protobug.FieldMask)
    ::google::protobug::internal::ReflectionOps::Merge(from, this);
  } else {
  // @@protoc_insertion_point(generalized_merge_from_cast_success:google.protobug.FieldMask)
    MergeFrom(*source);
  }
}

void FieldMask::MergeFrom(const FieldMask& from) {
// @@protoc_insertion_point(class_specific_merge_from_start:google.protobug.FieldMask)
  GOOGLE_DCHECK_NE(&from, this);
  _internal_metadata_.MergeFrom(from._internal_metadata_);
  ::google::protobug::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  paths_.MergeFrom(from.paths_);
}

void FieldMask::CopyFrom(const ::google::protobug::Message& from) {
// @@protoc_insertion_point(generalized_copy_from_start:google.protobug.FieldMask)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void FieldMask::CopyFrom(const FieldMask& from) {
// @@protoc_insertion_point(class_specific_copy_from_start:google.protobug.FieldMask)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool FieldMask::IsInitialized() const {
  return true;
}

void FieldMask::Swap(FieldMask* other) {
  if (other == this) return;
  InternalSwap(other);
}
void FieldMask::InternalSwap(FieldMask* other) {
  using std::swap;
  paths_.InternalSwap(CastToBase(&other->paths_));
  _internal_metadata_.Swap(&other->_internal_metadata_);
}

::google::protobug::Metadata FieldMask::GetMetadata() const {
  protobuf_google_2fprotobug_2ffield_5fmask_2eproto::protobug_AssignDescriptorsOnce();
  return ::protobuf_google_2fprotobug_2ffield_5fmask_2eproto::file_level_metadata[kIndexInFileMessages];
}


// @@protoc_insertion_point(namespace_scope)
}  // namespace protobug
}  // namespace google
namespace google {
namespace protobug {
template<> GOOGLE_PROTOBUG_ATTRIBUTE_NOINLINE ::google::protobug::FieldMask* Arena::CreateMaybeMessage< ::google::protobug::FieldMask >(Arena* arena) {
  return Arena::CreateInternal< ::google::protobug::FieldMask >(arena);
}
}  // namespace protobug
}  // namespace google

// @@protoc_insertion_point(global_scope)
