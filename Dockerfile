FROM alpine:3.10

RUN apk update && \
    apk --no-cache add --virtual gpp-build-deps make gcc libc-dev && \
    apk --no-cache add libc6-compat && \
    wget -c https://github.com/logological/gpp/releases/download/2.25/gpp-2.25.tar.bz2 && \
    tar jxf gpp-2.25.tar.bz2 && \
    cd gpp-2.25 && \
    ./configure && \
    make && \
    cp src/gpp /usr/bin/ && \
    apk del gpp-build-deps

# Use GPP as entry point
ENTRYPOINT ["/usr/bin/gpp"]

# And specify parameters as cmd
CMD []
