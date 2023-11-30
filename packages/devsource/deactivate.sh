export CFLAGS=$__CFLAGS;
unset __CFLAGS

export CXXFLAGS=$__CXXFLAGS
unset __CXXFLAGS

export LD_LIBRARY_PATH=$__LD_LIBRARY_PATH
unset __LD_LIBRARY_PATH

export CMAKE_PREFIX_PATH=$__CMAKE_PREFIX_PATH
unset __CMAKE_PREFIX_PATH

unset DESTDIR

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
