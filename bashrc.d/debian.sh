uid="$(id -un 2>/dev/null || :)"
if [ "$uid" = 'docker-pkg' ]; then
	: "${DEBFULLNAME:=Tianon Gravi}"
	: "${DEBEMAIL:=docker-pkg@debian.org}"
	export DEBFULLNAME DEBEMAIL
fi
unset uid

export DEBOOTSTRAP_MIRROR='http://deb.debian.org/debian'
export UBUNTUTOOLS_DEBIAN_MIRROR="$DEBOOTSTRAP_MIRROR"

# quilt is much amaze: https://wiki.debian.org/UsingQuilt#Using_quilt_with_Debian_source_packages
export QUILT_PATCHES=debian/patches
export QUILT_REFRESH_ARGS='-p ab --no-timestamps --no-index'
