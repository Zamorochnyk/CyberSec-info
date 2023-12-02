#!/bin/sh
trap 'exit 1' ERR
pacman --noconfirm --needed -Syyu \
							nmap \
							vulscan \
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