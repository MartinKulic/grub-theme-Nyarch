# Maintainer: Your Name <ja@github.com>
pkgname=grub-theme-Nyarch
pkgver=1.0
pkgrel=1
pkgdesc="Arch-chan themed Grub theme"
arch=("any")
url="https://github.com/MartinKulic/grub-theme-Nyarch"
license=('unknown')
groups=()
depends=("grub")
#backup=("etc/default/grub")
#options=()
#changelog=
noextract=()
#source=("$pkgname-$pkgver.tar.gz")
#source=("ArchChan-theme")
sha256sums=()
#validpgpkeys=()
install=$pkgname.install



package() {
	cd $srcdir
	install -dm777 "$pkgdir/usr/share/grub/themes"	
	#cp -r "$srcdir/ArchChan-theme" "$pkgdir/usr/share/grub/themes"
	cp -r "$startdir/ArchChan-theme" "$pkgdir/usr/share/grub/themes"
}
