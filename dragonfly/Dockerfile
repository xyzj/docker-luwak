FROM ubuntu:latest

RUN mkdir /opt/bin

COPY dragonfly-x86_64 /opt/bin/dragonfly

EXPOSE 6379

ENTRYPOINT ["/opt/bin/dragonfly"]