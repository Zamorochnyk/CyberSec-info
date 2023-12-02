#!/bin/sh
trap 'exit 1' ERR


# Set up BlackArch
curl -O https://blackarch.org/strap.sh
echo 5ea40d49ecd14c2e024deecf90605426db97ea0c strap.sh | sha1sum -c
chmod +x strap.sh
./strap.sh
sed -i 's/#[multilib]/[multilib]/' /etc/pacman.conf

pacman --noconfirm -S reflector rsync
reflector --latest 50 --sort rate --connection-timeout 1 --download-timeout 1 \
									--protocol http,https --save /etc/pacman.d/mirrorlist
pacman --noconfirm -R reflector rsync

# Install core tools
pacman --noconfirm --needed -Syyu \
							git \
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

# Set up locales
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && locale-gen
printf "export LANG='en_US.UTF-8'" >> /root/.bashrc

# Set up root login
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
echo "root:$PASS" | chpasswd && ssh-keygen -A