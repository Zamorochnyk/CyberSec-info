#!/bin/bash
set -e

apt update -y
apt upgrade -y

# Install core tools
apt install -y  \
			traceroute \
			ldnsutils \
			openvpn \
			locales \
			git \
			pipx

pipx enshurepath

# Set up locales
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && locale-gen


# default for container
echo "http_proxy=http://mitmproxy:8080/" > .bashrc
echo "https_proxy=http://mitmproxy:8080/"> .bashrc