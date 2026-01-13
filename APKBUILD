pkgname=sudo-nopasswd-global
pkgver=1.0
pkgrel=0
pkgdesc="Enable passwordless sudo for all users and all commands."
url="https://example.com"
arch="x86_64"
license="MIT"
depends="sudo"
options="!check"

source="nopasswd"

package() {
    install -Dm440 "$srcdir/nopasswd" "$pkgdir/etc/sudoers.d/00-nopasswd-global"
}

sha512sums="
de99cea21fa6581b1b87823192008f04e7e69d84a70646a5998905ab63d57d630853a5a373a0a47ab8abde3c2b03fad1eff1c2c02f9b32aa4a727a26f28e7a6c  nopasswd
"
