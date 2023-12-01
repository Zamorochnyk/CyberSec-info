#!/bin/sh
trap 'exit 1' ERR
pacman -Syu --noconfirm
pacman -S --noconfirm nmap \
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