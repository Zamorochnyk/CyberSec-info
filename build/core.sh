#!/bin/sh
trap 'exit 1' ERR
pacman-key --init

# Sync and rank mirrors, huge speed boost
pacman -Syu --noconfirm curl
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.temp
sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist.temp
curl "https://gitlab.archlinux.org/pacman/pacman-contrib/-/raw/master/src/rankmirrors.sh.in" --output rankmirrors.sh
chmod +x ./rankmirrors.sh 
./rankmirrors.sh -n 6 /etc/pacman.d/mirrorlist.temp > /etc/pacman.d/mirrorlist
rm /etc/pacman.d/mirrorlist.temp ./rankmirrors.sh

# Install core tools
pacman  --noconfirm -S git \
	  	       		   openbsd-netcat \
	 	       		   whois \
					   traceroute \
					   bind \
	 	               python \
	  	               python-pip \
	  	               python-pipx \
	  	               python-setuptools \
	  	               openvpn \
	  	               tmux \
	  	               nano \
	  	               openssh

# Misc tools config
pipx ensurepath

# Set up BlackArch repos
curl -O https://blackarch.org/strap.sh
echo 5ea40d49ecd14c2e024deecf90605426db97ea0c strap.sh | sha1sum -c
chmod +x strap.sh
./strap.sh
sed -i 's/#[multilib]/[multilib]/' /etc/pacman.conf
pacman -Syu --noconfirm

# Set up locales
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && locale-gen
printf "export LANG='en_US.UTF-8'" >> /root/.bashrc

# Set up root login
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
echo "root:$PASS" | chpasswd && ssh-keygen -A