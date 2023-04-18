# Maintainer: Bardia Moshiri <fakeshell@bardia.tech>

pkgname=samsung-starqlte-adaptation
provides=(halium9-post-install)
conflicts=(halium9-post-install)
pkgver=1$(date +%y%m%d)
pkgrel=1
pkgdesc="Manjaro libhybris adaptation for xiaomi onclite"
arch=('any')
url="https://github.com/manjaro-libhybris-devices/samsung-starqlte-adaptation"
license=('GPL')
depends=('gzip' 'glibc-locales' 'wget' 'systemd')
makedepends=('git')
source=("samsung-starqlte-adaptation::git+https://github.com/manjaro-libhybris-devices/samsung-starqlte-adaptation.git")
install=$pkgname.install
md5sums=('SKIP')

package() {
    mv "${srcdir}/samsung-starqlte-adaptation/samsung-starqlte-adaptation.sh" "${srcdir}/samsung-starqlte-adaptation/samsung-starqlte-adaptation"

    mkdir -p "${pkgdir}/usr/bin/"
    install -Dm755 "${srcdir}/samsung-starqlte-adaptation/samsung-starqlte-adaptation" -t "${pkgdir}/usr/bin/"
    mkdir -p "${pkgdir}/usr/lib/systemd/system/"
    install -Dm644 "${srcdir}/samsung-starqlte-adaptation/samsung-starqlte-adaptation.service" -t "${pkgdir}/usr/lib/systemd/system/"
    mkdir -p "${pkgdir}/usr/lib/sysusers.d/"
    install -Dm644 "${srcdir}/samsung-starqlte-adaptation/android.conf" -t "${pkgdir}/usr/lib/sysusers.d/"

    cp -r "${srcdir}/samsung-starqlte-adaptation/droid-vendor-overlay" -t "${pkgdir}/usr/lib/"
    cp -r "${srcdir}/samsung-starqlte-adaptation/droid-system-overlay" -t "${pkgdir}/usr/lib/"

    mkdir -p ${pkgdir}/etc/phosh/
    install -Dm644 "${srcdir}/samsung-starqlte-adaptation/phoc.ini" -t "${pkgdir}/etc/phosh/"

    mkdir -p "${pkgdir}/etc/udev/rules.d/"
    cp -r "${srcdir}/samsung-starqlte-adaptation/70-starqlte.rules" -t "${pkgdir}/etc/udev/rules.d/"

    mkdir -p "${pkgdir}/boot/"
    install -Dm644 "${srcdir}/samsung-starqlte-adaptation/boot.img" -t "${pkgdir}/boot/"

    mkdir -p "${pkgdir}/usr/lib/systemd/system/"
    install -Dm644 "${srcdir}/samsung-starqlte-adaptation/audiohal.service" "${pkgdir}/usr/lib/systemd/system/"
    install -Dm644 "${srcdir}/samsung-starqlte-adaptation/flashlight-perm.service" "${pkgdir}/usr/lib/systemd/system/"

    mkdir -p "${pkgdir}/var/lib/bluetooth/"
    install -Dm644 "${srcdir}/samsung-starqlte-adaptation/board-address" -t "${pkgdir}/var/lib/bluetooth/"

    mkdir -p "${pkgdir}/usr/share/glib-2.0/schemas/"
    install -Dm644 "${srcdir}/samsung-starqlte-adaptation/90_manjaro.gschema.override" -t "${pkgdir}/usr/share/glib-2.0/schemas/"
}
