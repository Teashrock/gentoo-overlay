# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A memory-safe systems language."
HOMEPAGE="https://aardappel.github.io/goose"
SRC_URI="https://github.com/aardappel/${PN}/archive/refs/tags/v${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="
	dev-build/cmake
	>=dev-build/make-4.4.1-r102
"

inherit cmake

src_prepare() {
	default
	cmake_prepare
}

src_configure() {
	cmake_src_configure
}

src_compile() {
	cmake_src_compile
	cmake_build
}

src_install() {
	dobin ${WORKDIR}/${PN}-${PV}_build/goose
}

