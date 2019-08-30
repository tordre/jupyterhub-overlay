# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7} )

inherit distutils-r1

DESCRIPTION="Jupyter metapackage. Install all the Jupyter components in one go"
HOMEPAGE="https://jupyter.org"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

RDEPEND="
    dev-python/jupyter_core[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.1[${PYTHON_USEDEP}]
	>=dev-python/pyzmq-13[${PYTHON_USEDEP}]
	>=www-servers/tornado-4.1[${PYTHON_USEDEP}]
	dev-python/traitlets[${PYTHON_USEDEP}]
	"

DEPEND="${RDEPEND}
    doc? ( dev-python/sphinx[${PYTHON_USEDEP}] )"
