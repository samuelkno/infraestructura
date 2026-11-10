FROM alpine:3.20

RUN apk update && apk add --no-cache busybox-extras \
    && adduser -D admin \
    && echo "admin:admin123" | chpasswd

EXPOSE 23

CMD ["telnetd", "-F", "-p", "23", "-b", "0.0.0.0"]
