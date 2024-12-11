#!/usr/bin/bash
curl --retry 3 -Lo /etc/yum.repos.d/starship-fedpra/repo \
	https://copr.fedorainfracloud.org/coprs/atim/starship/repo/fedora-%OS_VERSION%/atim-starship-fedora-%OS_VERSION%.repo
curl --retry 3 -Lo /etc/yum.repos.d/hardened-chromium.repo \
	https://copr.fedorainfracloud.org/coprs/secureblue/hardened-chromium/repo/fedora-%OS_VERSION%/secureblue-hardened-chromium-fedora-%OS_VERSION%.repo
curl --retry 3 -Lo  /etc/yum.repos.d/bubblejail.repo \
	https://copr.fedorainfracloud.org/coprs/secureblue/bubblejail/repo/fedora-%OS_VERSION%/secureblue-bubblejail-fedora-%OS_VERSION%.repo
rpm-ostree install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm


