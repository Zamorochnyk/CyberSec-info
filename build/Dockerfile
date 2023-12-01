FROM archlinux:base-devel
ARG PASS
COPY ./core.sh .
COPY ./tools.sh .
RUN chmod +x ./core.sh && ./core.sh
RUN chmod +x ./tools.sh && ./tools.sh
CMD ["/usr/sbin/sshd", "-D"]