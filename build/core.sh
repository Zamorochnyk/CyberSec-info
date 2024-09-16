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
	proxychains-ng \
	tor \
	mtm

pipx ensurepath
echo "PS1='\w\$ '" >> ~/.bashrc

# Set up tor
sed -i 's/User tor/User root/' /etc/tor/torrc
sed -i 's/#RunAsDaemon/RunAsDaemon/' /etc/tor/torrc 

#echo "export http_proxy=http://mitmproxy:8080/" >> ~/.bashrc
#echo "export https_proxy=http://mitmproxy:8080/" >> ~/.bashrc