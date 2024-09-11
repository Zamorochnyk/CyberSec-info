#!/bin/bash
set -e
xbps-install -Su -y
xbps-install -y \
	nmap \
	masscan \
	sqlmap \
	thc-hydra \
	hashcat \
	john \
	gobuster

# to /usr/bin, add second argument to change
github_loader.sh projectdiscovery/nuclei
github_loader.sh hahwul/dalfox
github_loader.sh projectdiscovery/katana

git clone --depth 1 https://github.com/commixproject/commix.git
chmod +x ./commix/commix.py
ln -s /commix/commix.py /usr/bin/commix

pipx install mitmproxy2swagger

# vulscan
git clone --depth 1 https://github.com/scipag/vulscan.git /usr/share/nmap/scripts/vulscan
cd /usr/share/nmap/scripts/vulscan
chmod +x ./update.sh
./update.sh