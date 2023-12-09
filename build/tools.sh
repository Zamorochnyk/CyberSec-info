#!/bin/sh
trap 'exit 1' ERR
pacman --noconfirm --needed -Syyu \
							nmap \
							masscan \
							mitmproxy \
							nuclei \
							dalfox \
							sqlmap \
							commix \
							hydra \
							hashcat \
							metasploit \
							john \
							katana-pd \
							gobuster

pipx install wapiti3
pipx install mitmproxy2swagger

git clone https://github.com/scipag/vulscan /usr/share/nmap/scripts/vulscan
chmod +x /usr/share/nmap/scripts/vulscan/update.sh
/usr/share/nmap/scripts/vulscan/update.sh