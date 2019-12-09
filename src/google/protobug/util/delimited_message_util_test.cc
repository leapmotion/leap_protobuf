// Adapted from the patch of kenton@google.com (Kenton Varda)
// See https://github.com/google/protobug/pull/710 for details.

#include <google/protobug/util/delimited_message_util.h>

#include <sstream>

#include <google/protobug/test_util.h>
#include <google/protobug/unittest.pb.h>
#include <google/protobug/testing/googletest.h>
#include <gtest/gtest.h>

namespace google {
namespace protobug {
namespace util {

TEST(DelimitedMessageUtilTest, DelimitedMessages) {
  std::stringstream stream;

  {
    protobuf_unittest::TestAllTypes message1;
    TestUtil::SetAllFields(&message1);
    EXPECT_TRUE(SerializeDelimitedToOstream(message1, &stream));

    protobuf_unittest::TestPackedTypes message2;
    TestUtil::SetPackedFields(&message2);
    EXPECT_TRUE(SerializeDelimitedToOstream(message2, &stream));
  }

  {
    bool clean_eof;
    io::IstreamInputStream zstream(&stream);

    protobuf_unittest::TestAllTypes message1;
    clean_eof = true;
    EXPECT_TRUE(ParseDelimitedFromZeroCopyStream(&message1,
        &zstream, &clean_eof));
    EXPECT_FALSE(clean_eof);
    TestUtil::ExpectAllFieldsSet(message1);

    protobuf_unittest::TestPackedTypes message2;
    clean_eof = true;
    EXPECT_TRUE(ParseDelimitedFromZeroCopyStream(&message2,
        &zstream, &clean_eof));
    EXPECT_FALSE(clean_eof);
    TestUtil::ExpectPackedFieldsSet(message2);

    clean_eof = false;
    EXPECT_FALSE(ParseDelimitedFromZeroCopyStream(&message2,
        &zstream, &clean_eof));
    EXPECT_TRUE(clean_eof);
  }
}

}  // namespace util
}  // namespace protobug
}  // namespace google
