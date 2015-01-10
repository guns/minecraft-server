# Maintainer: Sung Pae <self@sungpae.com>
pkgname=minecraft-server-script
pkgver=
pkgrel=1
pkgdesc="Minecraft server script with jar updating, world management, and a console repl"
arch=('any')
url="https://github.com/guns/minecraft-server"
license=('MIT')
groups=('nerv')
depends=('ruby')

pkgver() {
	printf '%s.%05d' "$(git rev-parse --abbrev-ref HEAD)" "$(git rev-list HEAD --count)"
}

package() {
	cd "$startdir"
	install -d "$pkgdir/usr/share/bash-completion/completions"
	install -d "$pkgdir/usr/bin"
	install -m 0644 bash-completion/minecraft "$pkgdir/usr/share/bash-completion/completions"
	install -m 0755 minecraft "$pkgdir/usr/bin/minecraft"
}

# vim:noet:ts=8:sts=8:sw=8
