FROM alpine:3.13

LABEL source="github.com/wfg/docker-socket-proxy"

ENV PING=1

RUN apk add --no-cache \
        haproxy

COPY haproxy.cfg /etc/haproxy/haproxy.cfg

CMD ["haproxy", "-f", "/etc/haproxy/haproxy.cfg"]
