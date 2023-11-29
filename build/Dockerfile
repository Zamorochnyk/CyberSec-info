FROM archlinux:base-devel
ARG PASS
COPY ./core.sh .
COPY ./recon.sh .
COPY ./exploit.sh .
RUN chmod +x ./core.sh && ./core.sh
RUN chmod +x ./recon.sh && ./recon.sh
RUN chmod +x ./exploit.sh && ./exploit.sh
CMD ["/usr/sbin/sshd", "-D"]