# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: app-portage/portage-git-etc/portage-git-etc-0.1.ebuild,v 1.0 2013/07/20 13:04:50 lkraav Exp $

EAPI=5
RESTRICT="mirror"
inherit eutils vcs-snapshot

DESCRIPTION="bashrc hook which automatically commits all changes made to /etc during emerges, including deletions"
HOMEPAGE="https://github.com/lkraav/portage-git-etc/"
SRC_URI="http://github.com/lkraav/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="app-misc/color
	app-portage/portage-bashrc-mv
	dev-vcs/git-sh
"

src_prepare() {
	epatch_user
}

src_install() {
	insinto /etc/portage
	doins -r bashrc.d
}
