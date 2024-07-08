FROM parrotsec/core:latest
COPY ./core.sh .
COPY ./tools.sh .
COPY ./githubloader.sh /usr/bin
RUN chmod +x ./core.sh ./tools.sh /usr/bin/githubloader.sh
RUN ./core.sh && rm ./core.sh
RUN ./tools.sh && rm ./tools.sh
ENTRYPOINT ["/bin/bash"]