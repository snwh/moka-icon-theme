pkgname=moka-icons-git
_pkgname=moka-icon-theme
pkgver=2.0.0
pkgrel=1
pkgdesc="Moka is a stylized Tango-esque Linux desktop icon set. They are designed to be a clear, simple and consistent."
arch=('any')
url="https://github.com/moka-project/moka-icon-theme"
license=('GPL3')
depends=()
makedepends=('git')
optdepends=()
provides=('moka-icons-git')
conflicts=('moka-icons-git')
source=('git+https://github.com/moka-project/moka-icon-theme.git')
md5sums=('SKIP')

pkgver() {
  cd $srcdir/$_pkgname
  echo $(git rev-list --count HEAD).$(git rev-parse --short HEAD)
}

package() {

  # create theme dirs
  install -d -m 755 "$pkgdir"/usr/share/icons/Moka

  # install theme
  cd $srcdir/moka-icon-theme/Moka
  cp -r . "$pkgdir"/usr/share/icons/Moka/
}
