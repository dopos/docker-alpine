
FROM scratch AS arch-arm
ADD armv7/alpine-minirootfs-3.14.3-armv7.tar.gz /

FROM scratch AS arch-amd64
ADD x86_64/alpine-minirootfs-3.14.3-x86_64.tar.gz /

FROM scratch AS arch-arm64
ADD aarch64/alpine-minirootfs-3.14.3-aarch64.tar.gz /

FROM arch-${TARGETARCH} AS final
ARG TARGETARCH
RUN echo "I am running for $TARGETARCH"
CMD ["/bin/sh"]
