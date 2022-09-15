mkdir -p build
cd build
cmake ${CMAKE_ARGS} \
      -DOPENVDB_BUILD_PYTHON_MODULE=ON \
      -DUSE_NUMPY=ON \
      -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
      -DUSE_ZLIB=OFF \
      ..
make -j${CPU_COUNT}
make install
