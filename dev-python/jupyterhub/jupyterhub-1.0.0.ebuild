
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
	>=dev-python/async_generator-1.8[${PYTHON_USEDEP}]
	>=dev-python/certipy-0.1.2[${PYTHON_USEDEP}]
	dev-python/entrypoints[${PYTHON_USEDEP}]
	dev-python/jinja[${PYTHON_USEDEP}]
	>=dev-python/oauthlib-3.0[${PYTHON_USEDEP}]
    dev-python/pamela[${PYTHON_USEDEP}]
	>=dev-python/prometheus_client-0.0.21[${PYTHON_USEDEP}]
	dev-python/python-dateutil[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	>=dev-python/sqlalchemy-1.1[${PYTHON_USEDEP}]
	>=www-servers/tornado-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/traitlets-4.3.2[${PYTHON_USEDEP}]
	"
#certipy -- not on gentoo separate ebuild
#pamela  -- not on gentoo separate ebuild

DEPEND="doc? ( dev-python/sphinx[${PYTHON_USEDEP}] )"
