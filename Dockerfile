FROM ghcr.io/void-linux/void-glibc-busybox

# Two transaction because how repo works
# Base packages
RUN xbps-install -Su -y -u xbps \
                            void-repo-nonfree \
                            bash \
                            bash-completion \
                            curl \
                            unzip \
                            ldns \
                            openvpn \
                            git \
                            python3-pipx \
                            micro \
                            ncurses-term \
                            tmux

# Tools
RUN xbps-install -Su -y nmap \
                        sqlmap \
                        thc-hydra \
                        hashcat \
                        john \
                        gobuster \
                        proxychains-ng

# Out of repo installations
RUN pipx ensurepath
RUN pipx install mitmproxy2swagger

COPY --chmod=777 ./utils/* /usr/bin

RUN github_loader -f nuclei -d /usr/bin projectdiscovery/nuclei && \
    chmod +x /usr/bin/nuclei

RUN github_loader -f dalfox-linux-amd64 -d /usr/bin  -p "https.*linux-amd64.*" hahwul/dalfox && \
    mv /usr/bin/dalfox-linux-amd64 /usr/bin/dalfox && \
    chmod +x /usr/bin/dalfox

RUN github_loader -f katana -d /usr/bin projectdiscovery/katana && \
    chmod +x /usr/bin/katana

RUN git clone --depth 1 https://github.com/commixproject/commix.git && \
    chmod +x ./commix/commix.py && \
    ln -s /commix/commix.py /usr/bin/commix

RUN git clone --depth 1 https://github.com/scipag/vulscan.git /usr/share/nmap/scripts/vulscan && \
    cd /usr/share/nmap/scripts/vulscan && \
    chmod +x ./update.sh && \
    ./update.sh

# Config
RUN ln -fs /bin/bash /bin/sh
RUN echo "PS1='[\u@\h \W]\$ '" >> ~/.bashrc; \
    echo "export LC_ALL=C.utf8"  >> ~/.bashrc; \
    echo "alias anon='proxychains4 -q'" >> ~/.bashrc; \
    echo 'sed -i "s/socks4.*127.0.0.1.*9050/socks5 $(drill -Q tor) 9150/" /etc/proxychains.conf'  >> ~/.bashrc; \
    echo "source ~/.bashrc" >> ~/.profile

ENTRYPOINT ["/bin/bash", "-c", "tmux"]
