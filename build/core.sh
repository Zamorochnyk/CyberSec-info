#!/bin/sh
apt update -y
apt upgrade 

# Install core tools
apt install -y --no-install-recommends --no-install-suggests \
													git \
													wget \
													curl \
													netcat-openbsd \
													whois \
													traceroute \
													ldnsutils \
													python3-requests \
													pipx \
													openvpn \
													tmux \
													nano \
													openssh-client \
													openssh-server \
													locales

# Misc tools config
pipx ensurepath

# Set up locales
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && locale-gen
printf "export LANG='en_US.UTF-8'" >> /root/.bashrc

# Set up root login
mkdir /run/sshd
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
echo "root:$PASS" | chpasswd && ssh-keygen -A