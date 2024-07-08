#!/bin/bash
set -e

apt install -y \
			nmap \
			masscan \
			sqlmap \
			hydra \
			hashcat \
			john \
			gobuster \
			nuclei \
			commix

#/usr/bin, add second argument to change
github_loader.sh hahwul/dalfox
github_loader.sh projectdiscovery/katana

pipx install mitmproxy2swagger

#vulscan
git clone https://github.com/scipag/vulscan.git /usr/share/nmap/scripts/vulscan
chmod +x /usr/share/nmap/scripts/vulscan/update.sh
/usr/share/nmap/scripts/vulscan/update.sh