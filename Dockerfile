FROM ghcr.io/void-linux/void-glibc-busybox
COPY --chmod=777 ./scripts/* /bin
RUN xbps-install -Su -y \
    void-repo-nonfree \
    bash \
    bash-completion \
    curl \
    unzip \
    ldns \
    openvpn \
    git \
    python3-pipx \
    nano \
    ncurses-term \
    nmap \
    proxychains-ng \
    tor \
    mtm \
    masscan \
    sqlmap \
    thc-hydra \
    hashcat \
    john \
    gobuster

RUN echo "PS1='\w\$ '" >> ~/.bashrc
RUN sed -i 's/User tor/User root/' /etc/tor/torrc && \
    sed -i 's/#RunAsDaemon/RunAsDaemon/' /etc/tor/torrc

RUN pipx ensurepath
RUN pipx install mitmproxy2swagger

RUN github_loader projectdiscovery/nuclei
RUN github_loader hahwul/dalfox
RUN github_loader projectdiscovery/katana

RUN git clone --depth 1 https://github.com/commixproject/commix.git && \
    chmod +x ./commix/commix.py && \
    ln -s /commix/commix.py /usr/bin/commix

RUN git clone --depth 1 https://github.com/scipag/vulscan.git /usr/share/nmap/scripts/vulscan && \
    cd /usr/share/nmap/scripts/vulscan && \
    chmod +x ./update.sh && \
    ./update.sh

ENTRYPOINT ["/bin/bash"]