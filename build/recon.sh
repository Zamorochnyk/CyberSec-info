#!/bin/sh
trap 'exit 1' ERR
pacman -Syu --noconfirm
pacman -S --noconfirm nmap \
					  vulscan \
	  	      		  masscan \
	  	      		  mitmproxy \
	  	      		  nuclei \
					  dalfox

pipx install wapiti3