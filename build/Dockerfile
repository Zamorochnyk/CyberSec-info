FROM ghcr.io/void-linux/void-glibc-busybox:latest
COPY ./github_loader.sh /usr/bin
COPY ./core.sh .
COPY ./tools.sh .
RUN chmod +x ./core.sh ./tools.sh /usr/bin/github_loader.sh
RUN ./core.sh && rm ./core.sh
RUN ./tools.sh && rm ./tools.sh
ENTRYPOINT ["/bin/bash"]