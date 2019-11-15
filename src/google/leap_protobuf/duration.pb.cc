// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/leap_protobuf/duration.proto

#include <google/leap_protobuf/duration.pb.h>

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
#ifdef GOOGLE_LEAP_PROTOBUF_ENFORCE_UNIQUENESS
#include "third_party/protobuf/version.h"
#endif
// @@protoc_insertion_point(includes)

namespace google {
namespace leap_protobuf {
class DurationDefaultTypeInternal {
 public:
  ::google::leap_protobuf::internal::ExplicitlyConstructed<Duration>
      _instance;
} _Duration_default_instance_;
}  // namespace leap_protobuf
}  // namespace google
namespace protobuf_google_2fprotobuf_2fduration_2eproto {
static void InitDefaultsDuration() {
  GOOGLE_LEAP_PROTOBUF_VERIFY_VERSION;

  {
    void* ptr = &::google::leap_protobuf::_Duration_default_instance_;
    new (ptr) ::google::leap_protobuf::Duration();
    ::google::leap_protobuf::internal::OnShutdownDestroyMessage(ptr);
  }
  ::google::leap_protobuf::Duration::InitAsDefaultInstance();
}

LIBPROTOBUF_EXPORT ::google::leap_protobuf::internal::SCCInfo<0> scc_info_Duration =
    {{ATOMIC_VAR_INIT(::google::leap_protobuf::internal::SCCInfoBase::kUninitialized), 0, InitDefaultsDuration}, {}};

void InitDefaults() {
  ::google::leap_protobuf::internal::InitSCC(&scc_info_Duration.base);
}

::google::leap_protobuf::Metadata file_level_metadata[1];

const ::google::leap_protobuf::uint32 TableStruct::offsets[] GOOGLE_LEAP_PROTOBUF_ATTRIBUTE_SECTION_VARIABLE(protodesc_cold) = {
  ~0u,  // no _has_bits_
  GOOGLE_LEAP_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(::google::leap_protobuf::Duration, _internal_metadata_),
  ~0u,  // no _extensions_
  ~0u,  // no _oneof_case_
  ~0u,  // no _weak_field_map_
  GOOGLE_LEAP_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(::google::leap_protobuf::Duration, seconds_),
  GOOGLE_LEAP_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(::google::leap_protobuf::Duration, nanos_),
};
static const ::google::leap_protobuf::internal::MigrationSchema schemas[] GOOGLE_LEAP_PROTOBUF_ATTRIBUTE_SECTION_VARIABLE(protodesc_cold) = {
  { 0, -1, sizeof(::google::leap_protobuf::Duration)},
};

static ::google::leap_protobuf::Message const * const file_default_instances[] = {
  reinterpret_cast<const ::google::leap_protobuf::Message*>(&::google::leap_protobuf::_Duration_default_instance_),
};

void protobuf_AssignDescriptors() {
  AddDescriptors();
  AssignDescriptors(
      "google/leap_protobuf/duration.proto", schemas, file_default_instances, TableStruct::offsets,
      file_level_metadata, NULL, NULL);
}

void protobuf_AssignDescriptorsOnce() {
  static ::google::leap_protobuf::internal::once_flag once;
  ::google::leap_protobuf::internal::call_once(once, protobuf_AssignDescriptors);
}

void protobuf_RegisterTypes(const ::std::string&) GOOGLE_LEAP_PROTOBUF_ATTRIBUTE_COLD;
void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
  ::google::leap_protobuf::internal::RegisterAllTypes(file_level_metadata, 1);
}

void AddDescriptorsImpl() {
  InitDefaults();
  static const char descriptor[] GOOGLE_LEAP_PROTOBUF_ATTRIBUTE_SECTION_VARIABLE(protodesc_cold) = {
      "\n\036google/leap_protobuf/duration.proto\022\017google"
      ".protobuf\"*\n\010Duration\022\017\n\007seconds\030\001 \001(\003\022\r"
      "\n\005nanos\030\002 \001(\005B|\n\023com.google.protobufB\rDu"
      "rationProtoP\001Z*github.com/golang/protobu"
      "f/ptypes/duration\370\001\001\242\002\003GPB\252\002\036Google.Prot"
      "obuf.WellKnownTypesb\006proto3"
  };
  ::google::leap_protobuf::DescriptorPool::InternalAddGeneratedFile(
      descriptor, 227);
  ::google::leap_protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "google/leap_protobuf/duration.proto", &protobuf_RegisterTypes);
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
}  // namespace protobuf_google_2fprotobuf_2fduration_2eproto
namespace google {
namespace leap_protobuf {

// ===================================================================

void Duration::InitAsDefaultInstance() {
}
#if !defined(_MSC_VER) || _MSC_VER >= 1900
const int Duration::kSecondsFieldNumber;
const int Duration::kNanosFieldNumber;
#endif  // !defined(_MSC_VER) || _MSC_VER >= 1900

Duration::Duration()
  : ::google::leap_protobuf::Message(), _internal_metadata_(NULL) {
  ::google::leap_protobuf::internal::InitSCC(
      &protobuf_google_2fprotobuf_2fduration_2eproto::scc_info_Duration.base);
  SharedCtor();
  // @@protoc_insertion_point(constructor:google.protobuf.Duration)
}
Duration::Duration(::google::leap_protobuf::Arena* arena)
  : ::google::leap_protobuf::Message(),
  _internal_metadata_(arena) {
  ::google::leap_protobuf::internal::InitSCC(&protobuf_google_2fprotobuf_2fduration_2eproto::scc_info_Duration.base);
  SharedCtor();
  RegisterArenaDtor(arena);
  // @@protoc_insertion_point(arena_constructor:google.protobuf.Duration)
}
Duration::Duration(const Duration& from)
  : ::google::leap_protobuf::Message(),
      _internal_metadata_(NULL) {
  _internal_metadata_.MergeFrom(from._internal_metadata_);
  ::memcpy(&seconds_, &from.seconds_,
    static_cast<size_t>(reinterpret_cast<char*>(&nanos_) -
    reinterpret_cast<char*>(&seconds_)) + sizeof(nanos_));
  // @@protoc_insertion_point(copy_constructor:google.protobuf.Duration)
}

void Duration::SharedCtor() {
  ::memset(&seconds_, 0, static_cast<size_t>(
      reinterpret_cast<char*>(&nanos_) -
      reinterpret_cast<char*>(&seconds_)) + sizeof(nanos_));
}

Duration::~Duration() {
  // @@protoc_insertion_point(destructor:google.protobuf.Duration)
  SharedDtor();
}

void Duration::SharedDtor() {
  GOOGLE_DCHECK(GetArenaNoVirtual() == NULL);
}

void Duration::ArenaDtor(void* object) {
  Duration* _this = reinterpret_cast< Duration* >(object);
  (void)_this;
}
void Duration::RegisterArenaDtor(::google::leap_protobuf::Arena* arena) {
}
void Duration::SetCachedSize(int size) const {
  _cached_size_.Set(size);
}
const ::google::leap_protobuf::Descriptor* Duration::descriptor() {
  ::protobuf_google_2fprotobuf_2fduration_2eproto::protobuf_AssignDescriptorsOnce();
  return ::protobuf_google_2fprotobuf_2fduration_2eproto::file_level_metadata[kIndexInFileMessages].descriptor;
}

const Duration& Duration::default_instance() {
  ::google::leap_protobuf::internal::InitSCC(&protobuf_google_2fprotobuf_2fduration_2eproto::scc_info_Duration.base);
  return *internal_default_instance();
}


void Duration::Clear() {
// @@protoc_insertion_point(message_clear_start:google.protobuf.Duration)
  ::google::leap_protobuf::uint32 cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  ::memset(&seconds_, 0, static_cast<size_t>(
      reinterpret_cast<char*>(&nanos_) -
      reinterpret_cast<char*>(&seconds_)) + sizeof(nanos_));
  _internal_metadata_.Clear();
}

bool Duration::MergePartialFromCodedStream(
    ::google::leap_protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!GOOGLE_PREDICT_TRUE(EXPRESSION)) goto failure
  ::google::leap_protobuf::uint32 tag;
  // @@protoc_insertion_point(parse_start:google.protobuf.Duration)
  for (;;) {
    ::std::pair<::google::leap_protobuf::uint32, bool> p = input->ReadTagWithCutoffNoLastTag(127u);
    tag = p.first;
    if (!p.second) goto handle_unusual;
    switch (::google::leap_protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // int64 seconds = 1;
      case 1: {
        if (static_cast< ::google::leap_protobuf::uint8>(tag) ==
            static_cast< ::google::leap_protobuf::uint8>(8u /* 8 & 0xFF */)) {

          DO_((::google::leap_protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::leap_protobuf::int64, ::google::leap_protobuf::internal::WireFormatLite::TYPE_INT64>(
                 input, &seconds_)));
        } else {
          goto handle_unusual;
        }
        break;
      }

      // int32 nanos = 2;
      case 2: {
        if (static_cast< ::google::leap_protobuf::uint8>(tag) ==
            static_cast< ::google::leap_protobuf::uint8>(16u /* 16 & 0xFF */)) {

          DO_((::google::leap_protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::leap_protobuf::int32, ::google::leap_protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &nanos_)));
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
        DO_(::google::leap_protobuf::internal::WireFormat::SkipField(
              input, tag, _internal_metadata_.mutable_unknown_fields()));
        break;
      }
    }
  }
success:
  // @@protoc_insertion_point(parse_success:google.protobuf.Duration)
  return true;
failure:
  // @@protoc_insertion_point(parse_failure:google.protobuf.Duration)
  return false;
#undef DO_
}

void Duration::SerializeWithCachedSizes(
    ::google::leap_protobuf::io::CodedOutputStream* output) const {
  // @@protoc_insertion_point(serialize_start:google.protobuf.Duration)
  ::google::leap_protobuf::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  // int64 seconds = 1;
  if (this->seconds() != 0) {
    ::google::leap_protobuf::internal::WireFormatLite::WriteInt64(1, this->seconds(), output);
  }

  // int32 nanos = 2;
  if (this->nanos() != 0) {
    ::google::leap_protobuf::internal::WireFormatLite::WriteInt32(2, this->nanos(), output);
  }

  if ((_internal_metadata_.have_unknown_fields() &&  ::google::leap_protobuf::internal::GetProto3PreserveUnknownsDefault())) {
    ::google::leap_protobuf::internal::WireFormat::SerializeUnknownFields(
        (::google::leap_protobuf::internal::GetProto3PreserveUnknownsDefault()   ? _internal_metadata_.unknown_fields()   : _internal_metadata_.default_instance()), output);
  }
  // @@protoc_insertion_point(serialize_end:google.protobuf.Duration)
}

::google::leap_protobuf::uint8* Duration::InternalSerializeWithCachedSizesToArray(
    bool deterministic, ::google::leap_protobuf::uint8* target) const {
  (void)deterministic; // Unused
  // @@protoc_insertion_point(serialize_to_array_start:google.protobuf.Duration)
  ::google::leap_protobuf::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  // int64 seconds = 1;
  if (this->seconds() != 0) {
    target = ::google::leap_protobuf::internal::WireFormatLite::WriteInt64ToArray(1, this->seconds(), target);
  }

  // int32 nanos = 2;
  if (this->nanos() != 0) {
    target = ::google::leap_protobuf::internal::WireFormatLite::WriteInt32ToArray(2, this->nanos(), target);
  }

  if ((_internal_metadata_.have_unknown_fields() &&  ::google::leap_protobuf::internal::GetProto3PreserveUnknownsDefault())) {
    target = ::google::leap_protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        (::google::leap_protobuf::internal::GetProto3PreserveUnknownsDefault()   ? _internal_metadata_.unknown_fields()   : _internal_metadata_.default_instance()), target);
  }
  // @@protoc_insertion_point(serialize_to_array_end:google.protobuf.Duration)
  return target;
}

size_t Duration::ByteSizeLong() const {
// @@protoc_insertion_point(message_byte_size_start:google.protobuf.Duration)
  size_t total_size = 0;

  if ((_internal_metadata_.have_unknown_fields() &&  ::google::leap_protobuf::internal::GetProto3PreserveUnknownsDefault())) {
    total_size +=
      ::google::leap_protobuf::internal::WireFormat::ComputeUnknownFieldsSize(
        (::google::leap_protobuf::internal::GetProto3PreserveUnknownsDefault()   ? _internal_metadata_.unknown_fields()   : _internal_metadata_.default_instance()));
  }
  // int64 seconds = 1;
  if (this->seconds() != 0) {
    total_size += 1 +
      ::google::leap_protobuf::internal::WireFormatLite::Int64Size(
        this->seconds());
  }

  // int32 nanos = 2;
  if (this->nanos() != 0) {
    total_size += 1 +
      ::google::leap_protobuf::internal::WireFormatLite::Int32Size(
        this->nanos());
  }

  int cached_size = ::google::leap_protobuf::internal::ToCachedSize(total_size);
  SetCachedSize(cached_size);
  return total_size;
}

void Duration::MergeFrom(const ::google::leap_protobuf::Message& from) {
// @@protoc_insertion_point(generalized_merge_from_start:google.protobuf.Duration)
  GOOGLE_DCHECK_NE(&from, this);
  const Duration* source =
      ::google::leap_protobuf::internal::DynamicCastToGenerated<const Duration>(
          &from);
  if (source == NULL) {
  // @@protoc_insertion_point(generalized_merge_from_cast_fail:google.protobuf.Duration)
    ::google::leap_protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
  // @@protoc_insertion_point(generalized_merge_from_cast_success:google.protobuf.Duration)
    MergeFrom(*source);
  }
}

void Duration::MergeFrom(const Duration& from) {
// @@protoc_insertion_point(class_specific_merge_from_start:google.protobuf.Duration)
  GOOGLE_DCHECK_NE(&from, this);
  _internal_metadata_.MergeFrom(from._internal_metadata_);
  ::google::leap_protobuf::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  if (from.seconds() != 0) {
    set_seconds(from.seconds());
  }
  if (from.nanos() != 0) {
    set_nanos(from.nanos());
  }
}

void Duration::CopyFrom(const ::google::leap_protobuf::Message& from) {
// @@protoc_insertion_point(generalized_copy_from_start:google.protobuf.Duration)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void Duration::CopyFrom(const Duration& from) {
// @@protoc_insertion_point(class_specific_copy_from_start:google.protobuf.Duration)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool Duration::IsInitialized() const {
  return true;
}

void Duration::Swap(Duration* other) {
  if (other == this) return;
  if (GetArenaNoVirtual() == other->GetArenaNoVirtual()) {
    InternalSwap(other);
  } else {
    Duration* temp = New(GetArenaNoVirtual());
    temp->MergeFrom(*other);
    other->CopyFrom(*this);
    InternalSwap(temp);
    if (GetArenaNoVirtual() == NULL) {
      delete temp;
    }
  }
}
void Duration::UnsafeArenaSwap(Duration* other) {
  if (other == this) return;
  GOOGLE_DCHECK(GetArenaNoVirtual() == other->GetArenaNoVirtual());
  InternalSwap(other);
}
void Duration::InternalSwap(Duration* other) {
  using std::swap;
  swap(seconds_, other->seconds_);
  swap(nanos_, other->nanos_);
  _internal_metadata_.Swap(&other->_internal_metadata_);
}

::google::leap_protobuf::Metadata Duration::GetMetadata() const {
  protobuf_google_2fprotobuf_2fduration_2eproto::protobuf_AssignDescriptorsOnce();
  return ::protobuf_google_2fprotobuf_2fduration_2eproto::file_level_metadata[kIndexInFileMessages];
}


// @@protoc_insertion_point(namespace_scope)
}  // namespace leap_protobuf
}  // namespace google
namespace google {
namespace leap_protobuf {
template<> GOOGLE_LEAP_PROTOBUF_ATTRIBUTE_NOINLINE ::google::leap_protobuf::Duration* Arena::CreateMaybeMessage< ::google::leap_protobuf::Duration >(Arena* arena) {
  return Arena::CreateMessageInternal< ::google::leap_protobuf::Duration >(arena);
}
}  // namespace leap_protobuf
}  // namespace google

// @@protoc_insertion_point(global_scope)
