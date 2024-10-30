FROM ghcr.io/void-linux/void-glibc-busybox
COPY --chmod=777 ./utils/* /usr/bin

# Two transaction because how repo works
# Base packages
RUN xbps-install -Su -y void-repo-nonfree \
                        bash \
                        bash-completion \
                        curl \
                        unzip \
                        parallel \
                        ldns \
                        openvpn \
                        git \
                        python3-pipx \
                        micro \
                        ncurses-term \
                        mtm

# Tools
RUN xbps-install -Su -y nmap \
                        proxychains-ng \
                        tor \
                        masscan \
                        sqlmap \
                        thc-hydra \
                        hashcat \
                        john \
                        gobuster

# Out of repo installations
RUN pipx ensurepath
RUN pipx install mitmproxy2swagger

RUN github_loader -f nuclei -d /usr/bin projectdiscovery/nuclei
RUN github_loader -f dalfox -d /usr/bin hahwul/dalfox
RUN github_loader -f katana -d /usr/bin projectdiscovery/katana
RUN chmod +x /usr/bin/nuclei \
             /usr/bin/dalfox \
             /usr/bin/katana

RUN git clone --depth 1 https://github.com/commixproject/commix.git && \
    chmod +x ./commix/commix.py && \
    ln -s /commix/commix.py /usr/bin/commix

RUN git clone --depth 1 https://github.com/scipag/vulscan.git /usr/share/nmap/scripts/vulscan && \
    cd /usr/share/nmap/scripts/vulscan && \
    chmod +x ./update.sh && \
    ./update.sh

# Config
RUN echo "PS1='\w\$ '" >> ~/.bashrc && \
    echo "export LC_ALL=C.utf8" >> ~/.bashrc

RUN sed -i 's/User tor/User root/' /etc/tor/torrc && \
    sed -i 's/#RunAsDaemon/RunAsDaemon/' /etc/tor/torrc

ENTRYPOINT ["/bin/bash"]