#include "google/leap_protobuf/compiler/code_generator.h"
#include "google/leap_protobuf/io/zero_copy_stream.h"
#include "google/leap_protobuf/io/printer.h"
#include "google/leap_protobuf/descriptor.h"
#include "google/leap_protobuf/descriptor.pb.h"
#include "schema_proto2_to_proto3_util.h"

#include "google/leap_protobuf/compiler/plugin.h"

using google::leap_protobuf::FileDescriptorProto;
using google::leap_protobuf::FileDescriptor;
using google::leap_protobuf::DescriptorPool;
using google::leap_protobuf::io::Printer;
using google::leap_protobuf::util::SchemaGroupStripper;
using google::leap_protobuf::util::SchemaAddZeroEnumValue;

namespace google {
namespace leap_protobuf {
namespace compiler {

namespace {

string StripProto(string filename) {
  if (filename.substr(filename.size() - 11) == ".protodevel") {
    // .protodevel
    return filename.substr(0, filename.size() - 11);
  } else {
    // .proto
    return filename.substr(0, filename.size() - 6);
  }
}

DescriptorPool new_pool_;

}  // namespace

class GoGoProtoGenerator : public CodeGenerator {
 public:
  virtual bool GenerateAll(const std::vector<const FileDescriptor*>& files,
                           const string& parameter,
                           GeneratorContext* context,
                           string* error) const {
    for (int i = 0; i < files.size(); i++) {
      for (auto file : files) {
        bool can_generate =
            (new_pool_.FindFileByName(file->name()) == nullptr);
        for (int j = 0; j < file->dependency_count(); j++) {
          can_generate &= (new_pool_.FindFileByName(
              file->dependency(j)->name()) != nullptr);
        }
        for (int j = 0; j < file->public_dependency_count(); j++) {
          can_generate &= (new_pool_.FindFileByName(
              file->public_dependency(j)->name()) != nullptr);
        }
        for (int j = 0; j < file->weak_dependency_count(); j++) {
          can_generate &= (new_pool_.FindFileByName(
              file->weak_dependency(j)->name()) != nullptr);
        }
        if (can_generate) {
          Generate(file, parameter, context, error);
          break;
        }
      }
    }

    return true;
  }

  virtual bool Generate(const FileDescriptor* file,
                        const string& parameter,
                        GeneratorContext* context,
                        string* error) const {
    FileDescriptorProto new_file;
    file->CopyTo(&new_file);
    SchemaGroupStripper::StripFile(file, &new_file);

    SchemaAddZeroEnumValue enum_scrubber;
    enum_scrubber.ScrubFile(&new_file);

    string filename = file->name();
    string basename = StripProto(filename);

    std::vector<std::pair<string,string>> option_pairs;
    ParseGeneratorParameter(parameter, &option_pairs);

    std::unique_ptr<google::leap_protobuf::io::ZeroCopyOutputStream> output(
        context->Open(basename + ".proto"));
    string content = new_pool_.BuildFile(new_file)->DebugString();
    Printer printer(output.get(), '$');
    printer.WriteRaw(content.c_str(), content.size());

    return true;
  }
};

}  // namespace compiler
}  // namespace leap_protobuf
}  // namespace google

int main(int argc, char* argv[]) {
  google::leap_protobuf::compiler::GoGoProtoGenerator generator;
  return google::leap_protobuf::compiler::PluginMain(argc, argv, &generator);
}
