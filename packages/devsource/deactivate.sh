export CFLAGS=$__CFLAGS;
unset __CFLAGS

export CXXFLAGS=$__CXXFLAGS
export __CXXFLAGS

export CMAKE_PREFIX_PATH=$__CMAKE_PREFIX_PATH
unset __CMAKE_PREFIX_PATH

case "$OSTYPE" in
	darwin*)
		export LDFLAGS=$__LDFLAGS
		unset __LDFLAGS

		export LDFLAGS_LD=$LDFLAGS_LD
		unset LDFLAGS_LD
		;;
	linux*)   
		export LDFLAGS=$__LDFLAGS
		unset __LDFLAGS
		;;
esac
