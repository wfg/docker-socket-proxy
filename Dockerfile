FROM alpine:3.13

ENV PING=1

RUN apk add --no-cache \
        haproxy

COPY haproxy.cfg /etc/haproxy/haproxy.cfg

CMD ["haproxy", "-f", "/etc/haproxy/haproxy.cfg"]
