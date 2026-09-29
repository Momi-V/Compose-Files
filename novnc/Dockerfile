FROM alpine:latest

RUN apk add novnc
ENV SERVER=localhost:5900

WORKDIR /usr/share/novnc

CMD novnc_server --vnc "$SERVER"
