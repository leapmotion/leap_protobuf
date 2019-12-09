// Protocol Buffers - Google's data interchange format
// Copyright 2008 Google Inc.  All rights reserved.
// https://developers.google.com/protocol-buffers/
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
//     * Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above
// copyright notice, this list of conditions and the following disclaimer
// in the documentation and/or other materials provided with the
// distribution.
//     * Neither the name of Google Inc. nor the names of its
// contributors may be used to endorse or promote products derived from
// this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

#ifndef GOOGLE_PROTOBUG_PYTHON_CPP_DESCRIPTOR_CONTAINERS_H__
#define GOOGLE_PROTOBUG_PYTHON_CPP_DESCRIPTOR_CONTAINERS_H__

// Mappings and Sequences of descriptors.
// They implement containers like fields_by_name, EnumDescriptor.values...
// See descriptor_containers.cc for more description.
#include <Python.h>

namespace google {
namespace protobug {

class Descriptor;
class FileDescriptor;
class EnumDescriptor;
class OneofDescriptor;
class ServiceDescriptor;

namespace python {

// Initialize the various types and objects.
bool InitDescriptorMappingTypes();

// Each function below returns a Mapping, or a Sequence of descriptors.
// They all return a new reference.

namespace message_descriptor {
PyObject* NewMessageFieldsByName(const Descriptor* descriptor);
PyObject* NewMessageFieldsByCamelcaseName(const Descriptor* descriptor);
PyObject* NewMessageFieldsByNumber(const Descriptor* descriptor);
PyObject* NewMessageFieldsSeq(const Descriptor* descriptor);

PyObject* NewMessageNestedTypesSeq(const Descriptor* descriptor);
PyObject* NewMessageNestedTypesByName(const Descriptor* descriptor);

PyObject* NewMessageEnumsByName(const Descriptor* descriptor);
PyObject* NewMessageEnumsSeq(const Descriptor* descriptor);
PyObject* NewMessageEnumValuesByName(const Descriptor* descriptor);

PyObject* NewMessageExtensionsByName(const Descriptor* descriptor);
PyObject* NewMessageExtensionsSeq(const Descriptor* descriptor);

PyObject* NewMessageOneofsByName(const Descriptor* descriptor);
PyObject* NewMessageOneofsSeq(const Descriptor* descriptor);
}  // namespace message_descriptor

namespace enum_descriptor {
PyObject* NewEnumValuesByName(const EnumDescriptor* descriptor);
PyObject* NewEnumValuesByNumber(const EnumDescriptor* descriptor);
PyObject* NewEnumValuesSeq(const EnumDescriptor* descriptor);
}  // namespace enum_descriptor

namespace oneof_descriptor {
PyObject* NewOneofFieldsSeq(const OneofDescriptor* descriptor);
}  // namespace oneof_descriptor

namespace file_descriptor {
PyObject* NewFileMessageTypesByName(const FileDescriptor* descriptor);

PyObject* NewFileEnumTypesByName(const FileDescriptor* descriptor);

PyObject* NewFileExtensionsByName(const FileDescriptor* descriptor);

PyObject* NewFileServicesByName(const FileDescriptor* descriptor);

PyObject* NewFileDependencies(const FileDescriptor* descriptor);
PyObject* NewFilePublicDependencies(const FileDescriptor* descriptor);
}  // namespace file_descriptor

namespace service_descriptor {
PyObject* NewServiceMethodsSeq(const ServiceDescriptor* descriptor);
PyObject* NewServiceMethodsByName(const ServiceDescriptor* descriptor);
}  // namespace service_descriptor


}  // namespace python
}  // namespace protobug

}  // namespace google
#endif  // GOOGLE_PROTOBUG_PYTHON_CPP_DESCRIPTOR_CONTAINERS_H__
