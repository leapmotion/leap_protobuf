#!/bin/csh

rm -f a.tmp
find . \
  -name "*.am" -o \
  -name "*.cc" -o \
  -name "*.cmake" -o \
  -name "*.h" -o \
  -name "*.in" -o \
  -name "*.inc" -o \
  -name "*.proto" -o \
  -name "*.txt" \
  > a.tmp

set files = "`cat a.tmp`"

echo $files

foreach f ( ${files} )
  echo -n "$f ..."
  tools/filter_source.exe < ${f} > ${f}.tmp
  cmp ${f} ${f}.tmp > /dev/null
  set rc = ${status}
  if (${rc} == 0) then
    echo " same"
    rm -f ${f}.tmp
  else
    echo " changed"
    mv -f ${f} ${f}.old
    mv -f ${f}.tmp ${f}
  endif
end
