FROM alpine:latest

RUN apk --no-cache add alpine-sdk sudo
RUN adduser -D builder
RUN addgroup builder abuild

USER builder
WORKDIR /home/builder
COPY --chown=builder:builder APKBUILD /home/builder/APKBUILD
RUN echo "ALL ALL=(ALL) NOPASSWD: ALL" > /home/builder/nopasswd
RUN abuild-keygen -a -n

USER root
RUN cp /home/builder/.abuild/*.rsa.pub /etc/apk/keys

USER builder
RUN abuild -r

CMD ["base64", "-w0", "/home/builder/packages/home/x86_64/sudo-nopasswd-global-1.0-r0.apk"]
