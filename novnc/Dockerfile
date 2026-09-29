FROM alpine:latest

RUN apk add novnc
ENV SERVER=localhost:5900

WORKDIR /usr/share/novnc
ADD ./fix-css.patch ./
RUN patch -p1 < fix-css.patch

CMD novnc_server --vnc "$SERVER"
