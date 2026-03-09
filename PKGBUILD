# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# Maintainer: Your Name <youremail@domain.com>
pkgname=grub-theme-Nyarch
pkgver=1.0
pkgrel=1.0
pkgdesc="Arch-chan themed Grub theme"
arch=("any")
url="https://github.com/MartinKulic/grub-theme-Nyarch"
license=('unknown')
groups=()
depends=("grub")
#makedepends=()
#checkdepends=()
#optdepends=()
#provides=()
#conflicts=()
#replaces=()
backup=("etc/default/grub")
#options=()
#changelog=
noextract=()
#source=("$pkgname-$pkgver.tar.gz")
source=()
sha256sums=("SKIP")
#validpgpkeys=()
install=$pkgname.install



#prepare() {
#	cd "$pkgname-$pkgver"
#	patch -p1 -i "$srcdir/$pkgname-$pkgver.patch"
#}

#build() {
#	cd "$pkgname-$pkgver"
#	./configure --prefix=/usr
#	make
#}

#check() {
#	cd "$pkgname-$pkgver"
#	make -k check
#}

package() {
	cd $srcdir
	install -dm755 "./ArchChan-theme" "$pkgdir/usr/share/grub/themes"
}
