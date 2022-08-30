#!/bin/sh

mkdir cmake-build
cd cmake-build

cmake ../cmake \
      -DCMAKE_BUILD_TYPE=Release \
      -Dprotobuf_BUILD_TESTS=OFF

cmake --build . --config Release --target install