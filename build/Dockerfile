FROM debian:testing-slim
ARG PASS
COPY ./core.sh .
COPY ./tools.sh .
COPY ./githubloader.py /root
RUN chmod +x ./core.sh ./tools.sh
RUN ./core.sh && rm ./core.sh
RUN ./tools.sh && rm ./tools.sh
CMD ["/usr/sbin/sshd", "-D"]