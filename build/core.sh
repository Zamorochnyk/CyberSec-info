#!/bin/ash
set -e

xbps-install -Su -y
xbps-install -y \
	void-repo-nonfree \
	bash \
	bash-completion \
	curl \
	unzip \
	ldns \
	openvpn \
	git \
	python3-pipx \
	nano \
	ncurses-term \
	glibc-locales

pipx ensurepath

# Set up locales
echo "en_US.UTF-8 UTF-8" >> /etc/default/libc-locales
xbps-reconfigure -f glibc-locales
echo "PS1='\w\$ '" >> ~/.bashrc
#echo "export http_proxy=http://mitmproxy:8080/" >> ~/.bashrc
#echo "export https_proxy=http://mitmproxy:8080/" >> ~/.bashrc