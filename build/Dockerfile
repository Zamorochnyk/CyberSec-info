FROM archlinux:base-devel
ARG PASS
COPY ./core.sh .
COPY ./tools.sh .
RUN chmod +x ./core.sh ./tools.sh
RUN ./core.sh
RUN ./tools.sh
CMD ["/usr/sbin/sshd", "-D"]