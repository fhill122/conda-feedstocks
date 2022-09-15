export __CFLAGS=$CFLAGS;
export CFLAGS="$CFLAGS -isystem $CONDA_PREFIX/include"

export __CXXFLAGS=$CXXFLAGS
export CXXFLAGS="$CXXFLAGS -isystem $CONDA_PREFIX/include"

export __CMAKE_PREFIX_PATH=$CMAKE_PREFIX_PATH
export CMAKE_PREFIX_PATH=$CONDA_PREFIX:$CMAKE_PREFIX_PATH

case "$OSTYPE" in
	darwin*)
		export __LDFLAGS=$LDFLAGS
		export LDFLAGS="$LDFLAGS -Wl,-rpath,$CONDA_PREFIX/lib -L$CONDA_PREFIX/lib"

		export __LDFLAGS_LD=$LDFLAGS_LD
		export LDFLAGS_LD="$LDFLAGS_LD -Wl,-rpath,$CONDA_PREFIX/lib -L$CONDA_PREFIX/lib"
		;;
	linux*)   
		export __LDFLAGS=$LDFLAGS
		export LDFLAGS="$LDFLAGS -Wl,-rpath,$CONDA_PREFIX/lib -Wl,-rpath-link,$CONDA_PREFIX/lib -L$CONDA_PREFIX/lib"
		;;
esac
