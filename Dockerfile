FROM alpine:3.4

MAINTAINER Sergey Sadovoi <sergey@hope.ua>

ENV \
    TIMEZONE=Europe/Kiev

RUN \
    # Add edge repo
    echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories && \
    echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories && \
    echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \

    # Install Bash
    apk --no-cache add bash && \

    # Set timezone
    apk --no-cache add tzdata && \
    cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime && \
    echo "${TIMEZONE}" > /etc/timezone && \
    apk del tzdata

ENTRYPOINT ["bash"]
