# Maintainer: Martin J. Kulich
pkgname=grub-theme-Nyarch
pkgver=1.2
pkgrel=1
pkgdesc="Arch-chan themed Grub theme"
arch=("any")
url="https://github.com/MartinKulic/grub-theme-Nyarch"
license=('unknown')
groups=()
depends=("grub")
makedepends=("xorg-xrandr")
#backup=("etc/default/grub")
#options=()
#changelog=
noextract=()
source=("$pkgname-$pkgver.tar.gz")
#source=("ArchChan-theme")
sha256sums=('SKIP')
#validpgpkeys=()

install=$pkgname.install


package() {
	cd $srcdir

	install -dm755 "$pkgdir/usr/share/grub/themes"	
	cp -r "$srcdir/ArchChan-theme" "$pkgdir/usr/share/grub/themes"
	install -dm755 "$pkgdir/tmp/grub_theme_install_tmp/"
	cp -r "$srcdir/temp" "$pkgdir/tmp/grub_theme_install_tmp"
}
