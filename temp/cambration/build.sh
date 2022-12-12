#!/bin/bash

# compile
mkdir build_conda && cd $_

cmake ${CMAKE_ARGS} \
    -DBUILD_SAMPLES=OFF \
    ..

cmake --build . -- -j${CPU_COUNT}
 
cmake --install .