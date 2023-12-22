#!/bin/sh
ARCH='linux_amd64'
apt install -y --no-install-recommends --no-install-suggests \
													nmap \
													masscan \
													mitmproxy \
													sqlmap \
													hydra \
													hashcat \
													john \
													gobuster

python3.11 /root/githubloader.py projectdiscovery/nuclei $ARCH /usr/bin
python3.11 /root/githubloader.py hahwul/dalfox $ARCH /usr/bin
python3.11 /root/githubloader.py projectdiscovery/katana $ARCH /usr/bin

git clone https://github.com/commixproject/commix.git commix
pipx install ./commix/
rm -rf ./commix

pipx install mitmproxy2swagger

#vulscan
git clone https://github.com/scipag/vulscan /usr/share/nmap/scripts/vulscan
chmod +x /usr/share/nmap/scripts/vulscan/update.sh
/usr/share/nmap/scripts/vulscan/update.sh